import capstone
from capstone import *
x = open("blackcipher.aes", "rb").read()
md = Cs(CS_ARCH_X86, CS_MODE_32)
md.detail = True

TYPES = ["INVALID", "XCORE_OP_REG","XCORE_OP_IMM", "XCORE_OP_MEM"]
def print_operands(i):
    for op in i.operands:
        print("type %s" % TYPES[op.type])

def operator_desc(op):
    return TYPES[op.type]

def value_desc(value):
    if type(value) == type(0):
        return "%x" % value
    if type(value) == type(""):
        return value
    return "unk: " + TYPES[op.type]

#hate this (?)
class RegOp:
    type = capstone.xcore.XCORE_OP_REG
    def __init__(self, ireg):
        self.reg = ireg

class IntOp:
    type = capstone.xcore.XCORE_OP_IMM
    def __init__(self, ival):
        self.imm = ival

def make_int(reg):
    return IntOp(reg)

def make_reg(reg):
    return RegOp(reg)

def is_int_value(value):
    if type(value) == type(0):
        return True
    if type(value) == type(""): #probably a initial value
        return False
    if value.type == capstone.xcore.XCORE_OP_IMM:
        return True
    return False

def has_int_value(context, stack, operator):
    value = fetch_contents(context, stack, operator)
    return is_int_value(value)

def get_int_value(context, stack, operator):
    contents = fetch_contents(context, stack, operator)
    if type(contents) == type(0):
        return contents
    if contents.type == capstone.xcore.XCORE_OP_IMM:
        return contents.imm
    raise "doesn't have an int value"

# how to handle sub eax, eax ? here z3 might be good (?)
def do_aritm(context, stack, operation, op1, op2):
    op1v = fetch_contents(context, stack, op1)
    op2v = fetch_contents(context, stack, op2)
    if not(is_int_value(op1v)):
        print("#do_aritm[]] operator 1: %s" % (operator_desc(op1),) )
    if not(is_int_value(op2v)):
        print("#do_aritm[]] operator 2: %s" % (operator_desc(op2),) )
    if is_int_value(op1v) and is_int_value(op2v):
        #computable operations branch
        val = operation(get_int_value(context, stack, op1), get_int_value(context, stack, op2))
        val &= 0xffffffff
        #changes z/s/c flags?
        if val == 0: #set Z
            pass
        if val != 0: #clear z
            pass
        put_contents(context, stack, op1, val)
        return "skip"
    return None #maybe return a stop condition

#operator to
# - reg
# - mem
#   - unknown / memslot
#   - stack slot (esp bassed)
# - imm

def stack_offset(context, stack, operator):
    index = (
            0 if operator.mem.index == 0
                else
                    get_int_value(context, stack, make_reg(operator.mem.index)) * operand.mem.scale
            )
    disp = 0 if operator.mem.disp == 0 else operator.mem.disp
    offset = 0 if (index + disp) == 0 else int(index + disp)
    return offset

def fetch_contents(context, stack, operator):
    if operator.type == capstone.xcore.XCORE_OP_REG:
        return context[operator.reg]
    if operator.type == capstone.xcore.XCORE_OP_IMM:
        return operator.imm
    if operator.type == capstone.xcore.XCORE_OP_MEM:
        if is_valid_stack_ref(context, stack, operator):
            offset = stack_offset(context, stack, operator)
            current_stack_pos = context[capstone.x86.X86_REG_ESP]
            print("#stack[%u, %u] -> " % (current_stack_pos, offset))
            return stack[current_stack_pos + offset]
        raise "unknown should be a type"
    raise "fetch_contents type "+str(operator.type)+" not proccessed"

def is_valid_stack_ref(context, stack, operator):
    #for now ESP + REG * scale + disp
    #another option is base + esp * 1 + disp (not handled yet)
    valid = (operator.mem.segment == 0) #segment should be 0
    valid &= operator.mem.base == capstone.x86.X86_REG_ESP #base should be esp
    valid &= (operator.mem.index == 0) or has_int_value(context, stack, make_reg(operator.mem.index))
    return valid

#return some operations ?
#operator <- what is a good name for this?
def put_contents(context, stack, operator, value):
    #print(str(operator) + " <- " + str(value))
    print("#put_contents[%s] <- %s" % (operator_desc(operator), str(value)))
    if operator.type == capstone.x86.X86_OP_REG:
        context[operator.reg] = value
        return None
    if operator.type == capstone.x86.X86_OP_MEM:
        if is_valid_stack_ref(context, stack, operator):
            offset = stack_offset(context, stack, operator)
            current_stack_pos = context[capstone.x86.X86_REG_ESP]
            print("#stack[%u, %u] <- " % (current_stack_pos, offset))
            stack[current_stack_pos + offset] = value
            return None

    raise "put_contents type "+str(operator.type)+" not proccessed"


def tracestuff(memdata, address):
  global stack, context, stuff
  count = 0
  while count < 10000:
    count += 1
    #
    y = md.disasm(memdata[address-0x400000:address-0x400000+100], address)
    #
    #a fetch one verb should be better, which to use?
    i = next(y) #since its a generator, gotta store to play
    proccessed_i = None
    #
    #
    #if not(capstone.x86.X86_GRP_JUMP in i.groups):
    print("l0x%x:\t%s\t%s" %(address, i.mnemonic, i.op_str.replace(" ptr ", "")))
    #
    #
    address = address + i.size
    #

    if capstone.x86.X86_GRP_CALL in i.groups:
        if i.operands[0].type == 2:
            if i.operands[0].imm == address:
                #if lifting the block
                #need to transform to a push(next address)
                context[capstone.x86.X86_REG_ESP] -= 4
                stack[context[capstone.x86.X86_REG_ESP]] = i.operands[0].imm
                #handle as push address
                print("#junk call")
                proccessed_i = "skip"
                skip = True
        #if constant, fork or follow?
        if skip == False:
            raise "end of the block, unknown call"
            break
    if capstone.x86.X86_GRP_RET in i.groups:
        #if static, jump
        raise "end of the block, unknown ret"
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
                print("#junk jump")
                proccessed_i = "skip"
                skip = True

        #if operand is fixed, add to blocks
        #will need the flags
        #copy the conditional instruction
        #

        if not(skip): #lord free us from this if!
            # raise "end of the block, unknown jump"
            # break
            pass #will break for now

    if i.mnemonic == "push":
        #how does push [esp - 0x10] proc in intel ?
        value = fetch_contents(context, stack, i.operands[0])

        #ESP = ESP - 4;
        context[capstone.x86.X86_REG_ESP] -= 4
        current_stack_pos = context[capstone.x86.X86_REG_ESP]

        stack[current_stack_pos] = value
        proccessed_i = "skip"

    if i.mnemonic == "pushfd":
        #gotta deduplicate code (?)
        #ESP = ESP - 4;
        context[capstone.x86.X86_REG_ESP] -= 4

        stack[context[capstone.x86.X86_REG_ESP]] = context["flags"]
        #SS:ESP = Source //push doubleword
        print("# <- " + str(context["flags"]))
        proccessed_i = "skip"

    if i.mnemonic == "pop":
        current_stack_pos = context[capstone.x86.X86_REG_ESP]

        value = stack[current_stack_pos]
        print("# -> " + str(value))

        #ESP = ESP + 4;
        context[capstone.x86.X86_REG_ESP] += 4

        put_contents(context, stack, i.operands[0], value)

        proccessed_i = "skip"

    if i.mnemonic == "pushal":
        context[capstone.x86.X86_REG_ESP] -= 4 * 8

        #temp = esp_val
        stack[context[capstone.x86.X86_REG_ESP]] = context[capstone.x86.X86_REG_EAX]
        stack[context[capstone.x86.X86_REG_ESP]+4] = context[capstone.x86.X86_REG_ECX];
        stack[context[capstone.x86.X86_REG_ESP]+8] = context[capstone.x86.X86_REG_EDX];
        stack[context[capstone.x86.X86_REG_ESP]+12] = context[capstone.x86.X86_REG_EBX];
        stack[context[capstone.x86.X86_REG_ESP]+16] = "crash_if_read, original esp + offset, from pushal"
        stack[context[capstone.x86.X86_REG_ESP]+20] = context[capstone.x86.X86_REG_EBP];
        stack[context[capstone.x86.X86_REG_ESP]+24] = context[capstone.x86.X86_REG_ESI];
        stack[context[capstone.x86.X86_REG_ESP]+28] = context[capstone.x86.X86_REG_EDI];
        proccessed_i = "skip"

    if i.mnemonic == "popal":
        context[capstone.x86.X86_REG_EAX] = stack[context[capstone.x86.X86_REG_ESP]]
        context[capstone.x86.X86_REG_ECX] = stack[context[capstone.x86.X86_REG_ESP]+4];
        context[capstone.x86.X86_REG_EDX] = stack[context[capstone.x86.X86_REG_ESP]+8];
        context[capstone.x86.X86_REG_EBX] = stack[context[capstone.x86.X86_REG_ESP]+12];
        #stack[context[capstone.x86.X86_REG_ESP]+16] = "crash_if_read, original esp + offset, from pushal"
        #can this instruction be used to rebase the ESP ?
        # life is hard!
        context[capstone.x86.X86_REG_EBP] = stack[context[capstone.x86.X86_REG_ESP]+20];
        context[capstone.x86.X86_REG_ESI] = stack[context[capstone.x86.X86_REG_ESP]+24];
        context[capstone.x86.X86_REG_EDI] = stack[context[capstone.x86.X86_REG_ESP]+28];

        context[capstone.x86.X86_REG_ESP] += 4 * 8

        #temp = esp_val
        proccessed_i = "skip"

    if i.mnemonic == "mov":
        #add a fetch in container function
        #add a put in container function
        value = fetch_contents(context, stack, i.operands[1])
        put_contents(context, stack, i.operands[0], value)
        proccessed_i = "skip"

    if i.mnemonic == "xchg":
        value0 = fetch_contents(context, stack, i.operands[0])
        value1 = fetch_contents(context, stack, i.operands[1])
        put_contents(context, stack, i.operands[0], value1)
        put_contents(context, stack, i.operands[1], value0)
        proccessed_i = "skip"

    #latter add a map for clearness
    if i.mnemonic == "neg":
        proccessed_i = do_aritm(context, stack, aritm_neg, i.operands[0], make_int(0))
    if i.mnemonic == "not":
        proccessed_i = do_aritm(context, stack, aritm_not, i.operands[0], make_int(0))

    if i.mnemonic == "inc":
        proccessed_i = do_aritm(context, stack, aritm_add, i.operands[0], make_int(1))
    if i.mnemonic == "dec":
        proccessed_i = do_aritm(context, stack, aritm_sub, i.operands[0], make_int(1))
    if i.mnemonic == "add":
        proccessed_i = do_aritm(context, stack, aritm_add, i.operands[0], i.operands[1])
    if i.mnemonic == "sub":
        proccessed_i = do_aritm(context, stack, aritm_sub, i.operands[0], i.operands[1])
    if i.mnemonic == "or":
        proccessed_i = do_aritm(context, stack, aritm_or, i.operands[0], i.operands[1])
    if i.mnemonic == "xor":
        proccessed_i = do_aritm(context, stack, aritm_xor, i.operands[0], i.operands[1])
    if i.mnemonic == "shr":
        proccessed_i = do_aritm(context, stack, aritm_shr, i.operands[0], i.operands[1])
    if i.mnemonic == "shl":
        proccessed_i = do_aritm(context, stack, aritm_shl, i.operands[0], i.operands[1])
    if i.mnemonic == "and":
        proccessed_i = do_aritm(context, stack, aritm_and, i.operands[0], i.operands[1])

    if i.mnemonic == "mul":
        #modifies 2 regs at same time
        pass

    if i.mnemonic == "rtdsc":
        pass

    #options
    #serialize the state up to here and append the instructions
    #   which is pretty easy
    #lift SSA, chain of dependency
    #starts feeling like i need IL,
    #   which is beyond the scope of the tut :P
    #for the current pos, xor(a,b b,a a,b)
    # can read the full block and prefilter these to a xchg
    # back to the need of an IL :P
    # the transformation to that xchg isn't clean with
    # the way the captone bindings are written

    if proccessed_i == None:
        return (stack, context, stuff)
        proccessed_i = i

    #if don't need to skip it append to it
    stuff.append((address, proccessed_i))

  return (stack, context, stuff)

#would be nice to have the abstract operations on these too :(
#but need to read more about functional python programing

def aritm_add(a,b):
    return a + b
def aritm_sub(a,b):
    return a - b
def aritm_or(a,b):
    return a | b
def aritm_xor(a,b):
    return a ^ b
def aritm_shl(a,b):
    return a << b
def aritm_shr(a,b):
    return a >> b
def aritm_and(a,b):
    return a & b
def aritm_neg(a,b):
    return 0 - a
def aritm_not(a,b):
    return ~ a

reg_names = {
capstone.x86.X86_REG_EAX: "EAX",
capstone.x86.X86_REG_EBP: "EBP",
capstone.x86.X86_REG_EBX: "EBX",
capstone.x86.X86_REG_ECX: "ECX",
capstone.x86.X86_REG_EDI: "EDI",
capstone.x86.X86_REG_EDX: "EDX",
capstone.x86.X86_REG_EFLAGS: "EFLAGS",
capstone.x86.X86_REG_EIP: "EIP",
capstone.x86.X86_REG_EIZ: "EIZ",
capstone.x86.X86_REG_ES: "ES",
capstone.x86.X86_REG_ESI: "ESI",
capstone.x86.X86_REG_ESP: "ESP",
}

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
  capstone.x86.X86_REG_ESP: initial_stack_pos,
  "flags": "initial_flags" #gotta decompose in each flag
}

#what sparse container can use?
import time
t = time.time()
tracestuff(x, 0x1DBF71A)
tracestuff(x, 0x098B6B4)
print(time.time() - t)
#tracestuff(x, 0x1DBF71A)

esp_diff = (1024 * 1024 - context[capstone.x86.X86_REG_ESP])
print("esp diff: %x" % esp_diff)
for i in range(0, int(esp_diff/4)):
    print("%s" % (value_desc(stack[context[capstone.x86.X86_REG_ESP] + i * 4])))

for reg in context:
    name = str(reg) if not(reg in reg_names) else reg_names[reg]
    print(name + " = " + value_desc(context[reg]))
less_stuff = [(a,b) for (a,b) in stuff if b != "skip"]
print(less_stuff)

# expected output so far
# eax            0xf7f88d88          -134705784
# ecx            0xa40319cb          -1543300661
# edx            0xffffda74          -9612
# ebx            0x0                 0
# esp            0xffffda40          0xffffda40
# ebp            0x0                 0x0
# esi            0xf7f86e24          -134713820
# edi            0xf7f86e24          -134713820
# eip            0x56556280          0x56556280 <__libc_csu_init>
# eflags         0x292               [ AF SF IF ]
# cs             0x23                35
# ss             0x2b                43
# ds             0x2b                43
# es             0x2b                43
# fs             0x0                 0
# gs             0x63                99
# stack:	0x00000346	0x0000037d	0x019b7157

"""todo:
so gotta make sure loops are processed once
but for now any conditional branch will stop the script
"""
"""
nasm -f elf32 res.asm
gcc -m32 res.o -o res
"""
