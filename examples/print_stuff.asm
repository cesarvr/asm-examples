section .data
section .text

msg: db "HELLO",0xa
len: equ $ - msg

global _start

_start:
  nop
; New code goes here. 

  mov edx,len
  mov ecx,msg 
  mov ebx,1  ; print 
  mov eax,4  ; sys_write
  int 80h    ; call kernel
  
  ;jnz decrease_by_one 
  
  mov eax,1
  int 80h  

; New code goes here. 
  nop 
section .bss


