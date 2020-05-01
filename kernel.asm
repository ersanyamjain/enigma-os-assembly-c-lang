bits 	32
section 	.text
	align 	4
	dd	0x1BADB002
	dd	0x00

global start
extern kmain		;This function is gonna be located in our c code(kernel.c)
start:
	cli		;Clears the interrupts
	call kmain	;Send processor to continue execution from our kmain function in c code
	halt		;Halt the CPU(pause it from executing from this address)
