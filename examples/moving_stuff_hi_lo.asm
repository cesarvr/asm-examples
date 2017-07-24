section .data
section .text

global _start

_start:
  nop
; New code goes here. 

	mov ax, 0babeh  
	mov bx, ax 
	mov cl, bh ; move the high bytes of bx to the lower end of cx 
	mov ch, bl ; the other way around
	xchg cl, ch 
 
; New code goes here. 
  nop 
section .bss


