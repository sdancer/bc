import capstone
from capstone import *
x = open("blackcipher.aes", "rb").read()
md = Cs(CS_ARCH_X86, CS_MODE_32)
md.detail = True

def is_integer(operator):
    return operator.type == capstone.xcore.XCORE_OP_IMM

def do_aritm(context, stack, operation, op1, op2):
    #changes z/s/c flags?
    val = operation(op1, op2)
    if val == 0 and is_integer(val):
        #set Z
        pass
    if val != 0 and is_integer(val):
        #clear z
        pass
    put_contents(op1, val)
    return None #maybe return a stop condition

#operator to
# - reg
# - mem
#   - unknown / memslot
#   - stack slot (esp bassed)
# - imm

def fetch_contents(context, stack, operator):
    if operator.type == capstone.xcore.XCORE_OP_REG:
        return context[operator.reg]
    if operator.type == capstone.xcore.XCORE_OP_IMM:
        return operator.imm
    if operator.type == capstone.xcore.XCORE_OP_MEM:
        if True:#memory is ESP, go to virtual stack
            pass
        return "unknown"
    raise "fetch_contents type "+str(operator.type)+" not proccessed"

#return some operations ?
def put_contents(context, stack, operator, value):
    print(str(operator) + " <- " + str(value))
    if operator.type == capstone.xcore.XCORE_OP_REG:
        context[operator.reg] = value
        return None
    if operator.type == capstone.xcore.XCORE_OP_MEM:
        if True:#memory is ESP, go to virtual stack
            pass
        raise "put_contents mem access"
    raise "put_contents type "+str(operator.type)+" not proccessed"

def tracestuff(memdata, address):
  count = 0
  stack = [None] * 2048 * 1024 #maybe initialize a range of initial_stack above esp
        #not 0, bcoz 0 might be a number in the future (?)
        #wish had atoms, what is the equivalent, that isn't strings or constants?
  stuff = []
  initial_stack_pos = 1024 * 1024
  context = {
    capstone.x86.X86_REG_EAX: "initial_eax",
    capstone.x86.X86_REG_EBX: "initial_ebx",
    capstone.x86.X86_REG_ECX: "initial_ecx",
    capstone.x86.X86_REG_EDX: "initial_edx",
    capstone.x86.X86_REG_ESI: "initial_esi",
    capstone.x86.X86_REG_EDI: "initial_edi",
    capstone.x86.X86_REG_EBP: "initial_ebp",
    #named tuples or whatever?
    capstone.x86.X86_REG_ESP: ("stack", initial_stack_pos, 0), #{initial, deviation}
    "flags": "initial_flags" #gotta decompose in each flag
  }
  while count < 100:
    count += 1
    #
    y = md.disasm(memdata[address-0x400000:][:100], address)
    #
    #a fetch one verb should be better, which to use?
    code = list(y) #since its a generator, gotta store to play
    i = code[0]
    proccessed_i = None
    #
    #
    address = address + i.size
    #
    #
    print("0x%x:\t%s\t%s" %(address, i.mnemonic, i.op_str))
    #

    if capstone.x86.X86_GRP_CALL in i.groups:
        raise "end of the block, unknown jump"
        break
    if capstone.x86.X86_GRP_RET in i.groups:
        raise "end of the block, unknown jump"
        break
    if capstone.x86.X86_GRP_JUMP in i.groups:
        skip = False
        if i.mnemonic == "jmp":
          if i.operands[0].type == 2:
            skip = True
            proccessed_i = "skip"
            address = i.operands[0].imm
        elif i.operands[0].type == 2:
            if i.operands[0].imm == address:
                print("junk jump")
                proccessed_i = "skip"
                skip = True
        if not(skip): #lord free us from this if!
            raise "end of the block, unknown jump"
            break


    #someone send me the reply to this ? :P
    #
    if i.mnemonic == "push":
        #ESP = ESP - 4;
		#SS:ESP = Source //push doubleword
        #we need 2 operation here, esp + and push_content
        if i.operands[0].type == 1: #reg type
            stack.append(i.operands[0].reg) #can push more stuf ?
            print(" <- " + str(context[i.operands[0].reg]))
        elif i.operands[0].type == 2: #please give me some case selector (?)
            #constant
            stack.append(i.operands[0].imm)
            print(" <- " + str(i.operands[0].imm))
        else:
            print("push type: "+str(i.operands[0].type))
            raise "stack unknown value, handle with empty theory"
            #no else, why python is like this? :P

    if i.mnemonic == "pushfd":
        #ESP = ESP - 4;
        #SS:ESP = Source //push doubleword
        stack.append(context["flags"])
        print(" <- " + str(context["flags"]))

    if i.mnemonic == "pop":
        #ESP = ESP + 4;
        from_stack = stack.pop()
        print(" -> " + str(from_stack))
        if i.operands[0].type == 1: #reg type
            context[i.operands[0].reg] = from_stack
        else:
            raise "stack unknown value, handle with empty theory"

    #gotta add pusha / popa

    if i.mnemonic == "mov":
        #add a fetch in container function
        #add a put in container function
        value = fetch_contents(context, stack, i.operands[1])
        put_contents(context, stack, i.operands[0], value)

    if i.mnemonic == "xchg":
        value0 = fetch_contents(context, stack, i.operands[0])
        value1 = fetch_contents(context, stack, i.operands[1])
        put_contents(context, stack, i.operands[0], value1)
        put_contents(context, stack, i.operands[1], value0)

    #latter add a map for clearness
    if i.mnemonic == "inc":
        proccessed_i = do_aritm(context, stack, aritm_add, op1, {type: 2, imm: 1})
    if i.mnemonic == "dec":
        proccessed_i = do_aritm(context, stack, aritm_sub, op1, {type: 2, imm: 1})
    if i.mnemonic == "add":
        proccessed_i = do_aritm(context, stack, aritm_add, op1, op2)
    if i.mnemonic == "sub":
        proccessed_i = do_aritm(context, stack, aritm_sub, op1, op2)
    if i.mnemonic == "or":
        proccessed_i = do_aritm(context, stack, aritm_or, op1, op2)
    if i.mnemonic == "xor":
        proccessed_i = do_aritm(context, stack, aritm_xor, op1, op2)
    if i.mnemonic == "shr":
        proccessed_i = do_aritm(context, stack, aritm_shr, op1, op2)
    if i.mnemonic == "shl":
        proccessed_i = do_aritm(context, stack, aritm_shl, op1, op2)

    if i.mnemonic == "mul":
        #modifies 2 regs at same time
        pass

    if i.mnemonic == "rtdsc":
        pass

    if proccessed_i == None:
        proccessed_i = i

    #if don't need to skip it append to it
    stuff.append((address, proccessed_i))

  return (stack, context, stuff)

def aritm_add(a,b):
    if is_integer(a) and is_integer(b):
        return a + b
    #else return an abstract operation with the operands
    raise "unknown types in op"
def aritm_sub(a,b):
    if is_integer(a) and is_integer(b):
        return a - b
    raise "unknown types in op"
def aritm_or(a,b):
    if is_integer(a) and is_integer(b):
        return a | b
    raise "unknown types in op"
def aritm_xor(a,b):
    if is_integer(a) and is_integer(b):
        return a ^ b
    raise "unknown types in op"
def aritm_shl(a,b):
    if is_integer(a) and is_integer(b):
        return a << b
    raise "unknown types in op"
def aritm_shr(a,b):
    if is_integer(a) and is_integer(b):
        return a | b
    raise "unknown types in op"

print(tracestuff(x, 0x1DBF71A))

#want elixir bindings
#these if/then/else fgs :(
