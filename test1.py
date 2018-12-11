import capstone
from capstone import *
from tools import *

initial_stack_pos = 1024 * 1024

x = open("blackcipher.aes", "rb").read()
md = Cs(CS_ARCH_X86, CS_MODE_32)
md.detail = True

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
def do_aritm(context, stack, operations, op1, op2):
    (realop, abstractop) = operations
    op1v = fetch_contents(context, stack, op1)
    op2v = fetch_contents(context, stack, op2)
    if not(is_int_value(op1v)):
        print("#do_aritm[]] operator 1: %s" % (operator_desc(op1),) )
    if not(is_int_value(op2v)):
        print("#do_aritm[]] operator 2: %s" % (operator_desc(op2),) )
    if is_int_value(op1v) and is_int_value(op2v):
        #computable operations branch
        val = realop(get_int_value(context, stack, op1), get_int_value(context, stack, op2))
        val &= 0xffffffff
        #changes z/s/c flags?
        if val == 0: #set Z
            pass
        if val != 0: #clear z
            pass
        put_contents(context, stack, op1, val)
        return "skip"
    #gotta resolve the real values
    val = abstractop(op1v, op2v)
    put_contents(context, stack, op1, val)
    print("abstract operation op1 <- " + value_desc(val))
    return "skip" #maybe return a stop condition

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
        if context[operator.reg] == None:
            raise "invalid contents"
        return context[operator.reg]
    if operator.type == capstone.xcore.XCORE_OP_IMM:
        return operator.imm
    if operator.type == capstone.xcore.XCORE_OP_MEM:
        if is_valid_stack_ref(context, stack, operator):
            offset = stack_offset(context, stack, operator)
            current_stack_pos = context[capstone.x86.X86_REG_ESP]
            print("#stack[%u, %u] -> " % (current_stack_pos, offset))
            if not((current_stack_pos + offset) in stack):
                return initial_stack_value(current_stack_pos + offset - initial_stack_pos)
            return stack[current_stack_pos + offset]
        print("fetch_contents type "+str(operator)+" not proccessed")
        return operator
        raise "unknown should be a type"
    print("fetch_contents type "+str(operator)+" not proccessed")
    return operator

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
    if value == None:
        raise "invalid value in put contents"
    if operator.type == capstone.x86.X86_OP_REG:
        context[operator.reg] = value
        return None
    if operator.type == capstone.x86.X86_OP_MEM:
        if is_valid_stack_ref(context, stack, operator):
            offset = stack_offset(context, stack, operator)
            current_stack_pos = context[capstone.x86.X86_REG_ESP]
            print("#stack[%s, %s] <- " % (str(current_stack_pos), str(offset)))
            stack[current_stack_pos + offset] = value
            return None
        return "is_mem_write"
    raise "put_contents type "+str(operator.type)+" not proccessed"

def liftblock(memdata, stack, context, stuff, addresstack, address, max_inst):
    global blocks
    for count in range(0,max_inst): #just not infinite
        if address in addresstack:
            print("doing address already done")
            break
        #
        #is address valid?
        y = md.disasm(memdata[address-0x400000:address-0x400000+100], address)
        #
        #a fetch one verb should be better, which to use?
        i = next(y) #since its a generator, gotta store to play
        proccessed_i = None
        #
        #
        #if not(capstone.x86.X86_GRP_JUMP in i.groups):
        print("l0x%x:\t%s\t%s" %(address, i.mnemonic, i.op_str.replace(" ptr ", "")))

        addresstack.append(address)

        inst_address = address
        address = address + i.size

        #what to do with loops?

        if capstone.x86.X86_GRP_CALL in i.groups:
            if i.operands[0].type == 2:
                if i.operands[0].imm == address:
                    #if lifting the block
                    #need to transform to a push(next address)
                    #context[capstone.x86.X86_REG_ESP] -= 4
                    #stack[context[capstone.x86.X86_REG_ESP]] = i.operands[0].imm
                    #handle as push address
                    print("#junk call")
                    proccessed_i = "skip"
                    skip = True
            #if constant, fork or follow?
            if skip == False:
                proccessed_i = "break"
        if capstone.x86.X86_GRP_RET in i.groups:
            #if static, jump
            proccessed_i = "break"
        if capstone.x86.X86_GRP_JUMP in i.groups:
            skip = False
            if i.mnemonic == "jmp":
                if i.operands[0].type == 2:
                    jmpaddress = i.operands[0].imm
                    if jmpaddress in addresstack:
                        print("loop was found, are we following a path fork?")
                        #a loop is detected, split the block
                        #iterate the list on instructions(stuff)
                        #find the first occurence of the address
                        ocur = None
                        for i in range(0, len(stuff)):
                            (a,b) = stuff[i]
                            if a == jmpaddress:
                                ocur = i
                        if ocur != None:
                            print("ocurrence found in instructions")
                            #trim the list
                            stuff = stuff[0:ocur]
                            #put a jmp to new block at that point
                            stuff.append(Jmp_to_block(jmpaddress))
                            #append to blocks
                            if not(jmpaddress in blocks):
                                blocks[jmpaddress] = None
                        #if ocur == None, we are following a path fork
                        break
                    else:
                        skip = True
                        proccessed_i = "skip"
                        address = jmpaddress
                else:
                    val = fetch_contents(context, stack, i.operands[0])
                    print(value_desc(val))
                    print(value_desc(context[capstone.x86.X86_REG_EAX]))
                    raise "jmp to unknoown location"
            elif i.operands[0].type == 2:
                jmpaddress = i.operands[0].imm
                if jmpaddress == address:
                    print("#junk jump")
                    proccessed_i = "skip"
                    skip = True
                #simple trick instead of proper graph work:
                #when a conditional fork is meet
                #run a few instructions (5~10) on each branch
                #see if they collide without side effects
                else:
                    print("fork branch")
                    l = liftblock(memdata, stack.copy(), context.copy(), [], addresstack.copy(), address, 10)
                    r = liftblock(memdata, stack.copy(), context.copy(), [], addresstack.copy(), i.operands[0].imm, 10)
                    l = [(a,b) for (a,b) in l if b != "skip"]
                    r = [(a,b) for (a,b) in r if b != "skip"]
                    #trim the skips and see if l.first == r.first
                    (la, l) = next(iter(l), None)
                    (ra, r) = next(iter(r), None)
                    print(l)
                    print(r)
                    if la == ra:
                        print("#junk jump")
                        proccessed_i = "skip"
                        skip = True
                    else:
                        #conditional_jump
                        if not(jmpaddress in blocks):
                            blocks[jmpaddress] = None
                        #need wall flags if
                        skip = True
                        proccessed_i = i

            #if operand is fixed, add to blocks
            #will need the flags
            #copy the conditional instruction
            #

            if not(skip): #lord free us from this if!
                # raise "end of the block, unknown jump"
                # break
                proccessed_i = "break"

        if proccessed_i == "break":
            print("break issued at %x" % (inst_address))
            break
        if proccessed_i == None:
            proccessed_i = i

        vproc(stack, context, i, address)

        stuff.append((inst_address, proccessed_i))
    return stuff


def vproc(stack, context, i, address):
    proccessed_i = None
    #if esp is abstract, execution failed
    if capstone.x86.X86_GRP_CALL in i.groups:
        if i.operands[0].type == 2:
            if i.operands[0].imm == address:
                #if lifting the block
                #need to transform to a push(next address)
                context[capstone.x86.X86_REG_ESP] -= 4
                stack[context[capstone.x86.X86_REG_ESP]] = address
                #handle as push address
                proccessed_i = "skip"

    if i.mnemonic == "push":
        #how does push [esp - 0x10] proc in intel ?
        value = fetch_contents(context, stack, i.operands[0])

        #ESP = ESP - 4;
        context[capstone.x86.X86_REG_ESP] -= 4
        current_stack_pos = context[capstone.x86.X86_REG_ESP]

        #use put contents for this too
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

    # if i.mnemonic == "lock cmpxchg":
    #     print("ebp: " + value_desc(context[capstone.x86.X86_REG_EBP]))
    #     print("ebx: " + value_desc(context[capstone.x86.X86_REG_EBX]))
    #     print("ecx: " + value_desc(context[capstone.x86.X86_REG_ECX]))
    #     raise "lock cmpxchg"

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
        ret = put_contents(context, stack, i.operands[0], value)
        if ret == "is_mem_write":
            #if failed, emit a side effect wall for the registers used
            print("walling")
            proccessed_i = Wall_side_effects(i)
        else:
            proccessed_i = "skip"

    if i.mnemonic == "xchg":
        value0 = fetch_contents(context, stack, i.operands[0])
        value1 = fetch_contents(context, stack, i.operands[1])
        put_contents(context, stack, i.operands[0], value1)
        put_contents(context, stack, i.operands[1], value0)
        proccessed_i = "skip"

    #latter add a map for clearness
    if i.mnemonic == "neg":
        proccessed_i = do_aritm(context, stack, (aritm_neg, abstract_neg), i.operands[0], make_int(0))
    if i.mnemonic == "not":
        proccessed_i = do_aritm(context, stack, (aritm_not, abstract_not), i.operands[0], make_int(0))

    if i.mnemonic == "inc":
        proccessed_i = do_aritm(context, stack, (aritm_add, abstract_add), i.operands[0], make_int(1))
    if i.mnemonic == "dec":
        proccessed_i = do_aritm(context, stack, (aritm_sub, abstract_sub), i.operands[0], make_int(1))
    if i.mnemonic == "add":
        proccessed_i = do_aritm(context, stack, (aritm_add, abstract_add), i.operands[0], i.operands[1])
    if i.mnemonic == "sub":
        proccessed_i = do_aritm(context, stack, (aritm_sub, abstract_sub), i.operands[0], i.operands[1])
    if i.mnemonic == "or":
        proccessed_i = do_aritm(context, stack, (aritm_or, abstract_or), i.operands[0], i.operands[1])
    if i.mnemonic == "xor":
        proccessed_i = do_aritm(context, stack, (aritm_xor, abstract_xor), i.operands[0], i.operands[1])
    if i.mnemonic == "shr":
        proccessed_i = do_aritm(context, stack, (aritm_shr, abstract_shr), i.operands[0], i.operands[1])
    if i.mnemonic == "shl":
        proccessed_i = do_aritm(context, stack, (aritm_shl, abstract_shl), i.operands[0], i.operands[1])
    if i.mnemonic == "and":
        proccessed_i = do_aritm(context, stack, (aritm_and, abstract_and), i.operands[0], i.operands[1])

    if i.mnemonic == "mul":
        #modifies 2 regs at same time
        pass

    if i.mnemonic == "rtdsc":
        pass

    return proccessed_i


#would be nice to have the abstract operations on these too :(
#but need to read more about functional python programing

blocks = {}

#what sparse container can use?
import time
t = time.time()
blocks[0x1DBF71A] = None
while True:
    #stack = [None] * 2048 * 1024 #maybe initialize a range of initial_stack above esp
    stack = {}
    context = new_context(initial_stack_pos)
    #find a block that is None
    block_addr = None
    for b in blocks:
        if blocks[b] == None:
            block_addr = b
            break
    if block_addr == None:
        print("nothing more to lift")
        break;
    print(";###################################################")
    ablock = liftblock(x, stack, context, [], [], block_addr, 100000)
    blocks[block_addr] = ablock

def effects(f, context, stack):
    esp_diff = context[capstone.x86.X86_REG_ESP] - initial_stack_pos
    print("\t;esp diff: %x" % esp_diff, file=f)
    print("\tadd esp, %d" % esp_diff, file=f)
    #trim the stack changes above esp
    for i in stack:
        if i >= context[capstone.x86.X86_REG_ESP]:
            print("\t;%x %s" % (i, value_desc(stack[i])), file=f)
            print("\tmov [esp + 0x%x], %s" % (i - context[capstone.x86.X86_REG_ESP], value_desc(stack[i])), file=f)
        else:
            print("\t;%x %s" % (i, value_desc(stack[i])), file=f)

    for reg in context:
        name = str(reg) if not(reg in reg_names) else reg_names[reg]
        print("\t" + name + " = " + value_desc(context[reg]), file=f)

def compile_block(f, block):
    stack = {}
    context = new_context(initial_stack_pos)
    for inst in block:
        if type(inst) is tuple:
            (address,b) = inst
            if b != "skip":
                proccessed_i = vproc(stack, context, b, address)
                if proccessed_i != None:
                    b = proccessed_i
            if b == None:
                raise "wtf none? %x" % address
            if type(b) is capstone.CsInsn:
                effects(f, context, stack)
                print("\t;%x" % address + " " + str(b), file=f)
                print("\t" + b.mnemonic, b.op_str.replace(" ptr ", ""), file=f)
            elif b != "skip":
                print("\t;%x" % address + " " + str(b), file=f)
        else:
            effects(f, context, stack)
            print("\t" + inst.compile_to_asm(), file=f)
            #b = inst

f = open("out.asm", "w")
for block in blocks:
    print("block %x" % block)
    print("block_%x:" % block, file=f)
    compile_block(f, blocks[block])
f.close()
#print(ablock)
#ablock = liftblock(x, 0x098B6B4)
#print(ablock)
print(time.time() - t)
#tracestuff(x, 0x1DBF71A)

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
