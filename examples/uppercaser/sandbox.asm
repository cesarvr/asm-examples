section .bss
  buffer resb 1

section .data

section .text
  global _start
  msg: db "Z",0xa
  len: equ $ - msg

global _start

_start:
  nop
; New code goes here. 

Read: mov eax, 3 ;sys_call read 
      mov ebx, 0 ;read stdin 
      mov ecx, buffer
      mov edx,1
      int 80H    ; make_call

      cmp eax, 0  ; if EOF jump to Exit
      je Exit
      
      cmp byte[buffer], 61h 
      jb Print
    
      cmp byte[buffer], 7Ah
      ja Print
      
      sub byte[buffer], 20h
      
Print: mov eax,4  ;sys_call write
       mov ebx,1  ;stdout 
       mov ecx,buffer ;print buffer 
       mov edx,1 ;length 
       int 80H
       jmp Read    

Exit: 
     mov eax, 1 ;sys_call exit 
     mov ebx, 0 ;return code to linux 0 (Success)
     int 80h 
      
; New code goes here. 
  nop 


