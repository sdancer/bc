import capstone
from capstone import *

class AbstractOp:
    def __init__(self, optype, op1, op2):
        self.optype = optype
        self.op1 = op1
        self.op2 = op2
    def get_real_img(self):
        return get_real_img_pair(self.op1, self.op2)

def is_int_value(value):
    if type(value) == type(0):
        return True
    if type(value) == InitialReg: #probably a initial value
        return False
    if type(value) == AbstractOp: #probably a initial value
        return False
    if type(value) == initial_stack_value:
        return False
    if value.type == capstone.xcore.XCORE_OP_IMM:
        return True
    return False

def val_in_abstract_ops(a, optype, b):
    if type(a) == AbstractOp:
        if (a.optype == optype):
            if a.op1 == b:
                return True
            if a.op2 == b:
                return True
    return False

def exclude_val_from_abstract(a, b):
    if type(a) == AbstractOp:
        if a.op1 == b:
            return a.op2
        if a.op2 == b:
            return a.op1
    raise "wrong input type"

def aritm_add(a,b):
    return toint32(a) + toint32(b)
def aritm_sub(a,b):
    return toint32(a) - toint32(b)
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

def realpart(a):
    if is_int_value(a.op1):
        return a.op1
    if is_int_value(a.op2):
        return a.op2
    return None

def abstractpart(a):
    if not(is_int_value(a)):
        return a.op1
    if not(is_int_value(a)):
        return a.op2
    return None

def toint32(x):
    if (x & 0x80000000 == 0x80000000) and (x > 0):
        return x - 0x100000000
    return x

def get_real_img_pair(a,b):
    if is_int_value(a):
        return (a,b)
    if is_int_value(b):
        return (b,a)
    return None #no real value

def abstract_add(a,b):
    r_i_pair = get_real_img_pair(a,b)
    if r_i_pair:
        (real1, img) = r_i_pair
        if (type(img) is AbstractOp) and (img.optype in ["add", "sub"]):
            r_i_2 = img.get_real_img()
            if r_i_2:
                (real2, img2) = r_i_2
                if img.optype == "sub":
                    real2 = -real2
                return AbstractOp("add", img2, real1 + real2)
    return AbstractOp("add", a, b)
def abstract_sub(a,b):
    if a == b:
        return 0 #lol
    r_i_pair = get_real_img_pair(a,b)
    if r_i_pair:
        (real1, img) = r_i_pair
        if (type(img) is AbstractOp) and (img.optype in ["add", "sub"]):
            r_i_2 = img.get_real_img()
            if r_i_2:
                (real2, img2) = r_i_2
                if img.optype == "add":
                    real2 = -real2
                return AbstractOp("sub", img2, real1 + real2)
    return AbstractOp("sub", a, b)
def abstract_or(a,b):
    return AbstractOp("or", a, b)
def abstract_xor(a,b):
    real = None
    abstract = None

    if is_int_value(a):
        real = a
    if is_int_value(b):
        real = b

    if a == b:
        return 0 #lol

    #if instead of classes we had data,
    # comparing anidated operations would be straight forward
    if val_in_abstract_ops(b, "xor", a):
        return exclude_val_from_abstract(b,a)
    if val_in_abstract_ops(a, "xor", b):
        return exclude_val_from_abstract(a,b)

    if (type(a) == AbstractOp):
        abstract = a
    if (type(b) == AbstractOp):
        abstract = b

    #what about virtual values like initial_reg?

    #compute real numbers xor
    if (real and abstract):
        print("computing over other abstract of type: " + abstract.optype)
        if abstract.optype == "xor":
            #op1 or op2, which is the real part?
            realp = realpart(abstract)
            abstractp = abstractpart(abstract)
            print("realp: " + str(realp))
            print("abstractp: " + str(abstractp))
            if realp:
                val = 0xffffffff & (real ^ realp)
                print("val: "+str(val))
                if val == 0:
                    return abstractp
                else:
                    return AbstractOp("xor", abstractp, val)
    return AbstractOp("xor", a, b)
def abstract_shl(a,b):
    return AbstractOp("shl", a, b)
def abstract_shr(a,b):
    return AbstractOp("shr", a, b)
def abstract_and(a,b):
    return AbstractOp("and", a, b)
def abstract_neg(a,b):
    return AbstractOp("neg", a, b)
def abstract_not(a,b):
    return AbstractOp("not", a, b)


def value_desc(value):
    if type(value) == type(0):
        return "0x%x" % value
    if type(value) == type(""):
        return value
    if type(value) == AbstractOp:
        return describe_abstract(value)
    if type(value) == initial_stack_value:
        return value.desc()
    if type(value) == InitialReg:
        return str(value)
    return "unk: " + TYPES[value.type]

TYPES = ["INVALID", "XCORE_OP_REG","XCORE_OP_IMM", "XCORE_OP_MEM"]
def print_operands(i):
    for op in i.operands:
        print("type %s" % TYPES[op.type])

def operator_desc(op):
    return TYPES[op.type]

def describe_abstract(value):
    if not(type(value) is AbstractOp):
        raise "wrong value type" #not very functional behavior
    return "(%s %s %s)" % (value.optype, value_desc(value.op1), value_desc(value.op2))

class Jmp_to_block:
    def __init__(self, to_address):
        self.to_address = to_address
    def compile_to_asm(self):
        return "jmp block_%x" % self.to_address

class Wall_side_effects:
    def __init__(self, instruction):
        self.instruction = instruction
    def compile_to_asm(self):
        return ""

class initial_stack_value:
    def __init__(self, pos):
        self.pos = pos
    def desc(self):
        return "initial_stack_value(%x)" % (self.pos)

class InitialReg():
    def __init__(self, reg):
        self.reg = reg
    def __str__(self):
     return "initial_%s" % (reg_names[self.reg],)

def new_context(initial_stack_pos):
    return {
      capstone.x86.X86_REG_EAX: InitialReg(capstone.x86.X86_REG_EAX),
      capstone.x86.X86_REG_EBX: InitialReg(capstone.x86.X86_REG_EBX),
      capstone.x86.X86_REG_ECX: InitialReg(capstone.x86.X86_REG_ECX),
      capstone.x86.X86_REG_EDX: InitialReg(capstone.x86.X86_REG_EDX),
      capstone.x86.X86_REG_ESI: InitialReg(capstone.x86.X86_REG_ESI),
      capstone.x86.X86_REG_EDI: InitialReg(capstone.x86.X86_REG_EDI),
      capstone.x86.X86_REG_EBP: InitialReg(capstone.x86.X86_REG_EBP),
      #named tuples or whatever?
      capstone.x86.X86_REG_ESP: initial_stack_pos,
      "flags": "initial_flags" #gotta decompose in each flag
    }


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
