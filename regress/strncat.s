.text
_strncat:
L1:
	pushq %rbp
	movq %rsp,%rbp
L21:
	movq %rdi,%rax
	movq %rax,%rdi
	cmpq $0,%rdx
	jbe L3
L7:
	movq %rdi,%rcx
	addq $1,%rdi
	movzbl (%rcx),%ecx
	cmpl $0,%ecx
	jnz L7
L9:
	addq $-1,%rdi
L10:
	movq %rsi,%rcx
	addq $1,%rsi
	movzbl (%rcx),%ecx
	movq %rdi,%r8
	addq $1,%rdi
	movb %cl,(%r8)
	movzbl %cl,%ecx
	cmpl $0,%ecx
	jz L3
L11:
	addq $-1,%rdx
	cmpq $0,%rdx
	ja L10
L15:
	movb $0,(%rdi)
L3:
	popq %rbp
	ret
L23:
.globl _strncat