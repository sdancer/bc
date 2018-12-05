import capstone
from capstone import *
x = open("blackcipher.aes", "rb").read()
md = Cs(CS_ARCH_X86, CS_MODE_32)
md.detail = True

def do_aritm(context, stack, op1, op2):
    #changes z/s/c flags?
    return None #maybe return a stop condition

#operator to
# - reg
# - mem
#   - unknown / memslot
#   - stack slot (esp bassed)
# - imm

def fetch_contents(context, stack, operator):
    if operator.type == XCORE_OP_REG:
        return context[operator.reg]
    if operator.type == XCORE_OP_IMM:
        return operator.imm
    if operator.type == XCORE_OP_MEM:
        return "unknown"

def put_contents(context, stack, operator, value):
    print(str(operator) + " <- " + str(value))
    return None

def tracestuff(memdata, address):
  count = 0
  stack = [] #maybe initialize a range of initial_stack above esp
  stuff = []
  context = {
    capstone.x86.X86_REG_EAX: "initial_eax",
    capstone.x86.X86_REG_EBX: "initial_ebx",
    capstone.x86.X86_REG_ECX: "initial_ecx",
    capstone.x86.X86_REG_EDX: "initial_edx",
    capstone.x86.X86_REG_ESI: "initial_esi",
    capstone.x86.X86_REG_EDI: "initial_edi",
    capstone.x86.X86_REG_EBP: "initial_ebp",
    capstone.x86.X86_REG_ESP: ("initial_esp", 0), #{initial, deviation}
    "flags": "initial_flags"
  }
  while count < 100:
    count += 1
    #
    y = md.disasm(memdata[address-0x400000:][:100], address)
    #
    #a fetch one verb should be better, which to use?
    code = list(y) #since its a generator, gotta store to play
    i = code[0]
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
            address = i.operands[0].imm
        elif i.operands[0].type == 2:
            if i.operands[0].imm == address:
                print("junk jump")
                skip = True
        if not(skip): #lord free us from this if!
            raise "end of the block, unknown jump"
            break
    #
    if i.mnemonic == "push":
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
      stack.append(context["flags"])
      print(" <- " + str(context["flags"]))

    if i.mnemonic == "pop":
      from_stack = stack.pop()
      print(" -> " + str(from_stack))
      if i.operands[0].type == 1: #reg type
        context[i.operands[0].reg] = from_stack
      else:
        raise "stack unknown value, handle with empty theory"

    if i.mnemonic == "mov":
        #add a fetch in container function
        #add a put in container function
        value = fetch_contents(i.operands[1])
        put_contents(context, stack, i.operands[0], value)

    if i.mnemonic == "xchg":
        value0 = fetch_contents(i.operands[0])
        value1 = fetch_contents(i.operands[1])
        put_contents(context, stack, i.operands[0], value1)
        put_contents(context, stack, i.operands[1], value0)

    #latter add a map for clearness
    if i.mnemonic == "inc":
        do_aritm(context, stack, add, op1, {type: 2, imm: 1})
    if i.mnemonic == "dec":
        do_aritm(context, stack, sub, op1, {type: 2, imm: 1})
    if i.mnemonic == "add":
        do_aritm(context, stack, add, op1, op2)
    if i.mnemonic == "sub":
        do_aritm(context, stack, sub, op1, op2)
    if i.mnemonic == "or":
        do_aritm(context, stack, or, op1, op2)
    if i.mnemonic == "xor":
        do_aritm(context, stack, xor, op1, op2)
    if i.mnemonic == "shr":
        do_aritm(context, stack, shr, op1, op2)
    if i.mnemonic == "shl":
        do_aritm(context, stack, shl, op1, op2)

    if i.mnemonic == "mul":
        #modifies 2 regs at same time
        pass

    if i.mnemonic == "rtdsc":
        pass

  return (stack, context, stuff)

print(tracestuff(x, 0x1DBF71A))

#want elixir bindings
#these if/then/else fgs :(
