SECTION .data ; Section containing initialized data

EatMsg: db "Hello, World!",10
character: db "N",10
EatLen: equ $-EatMsg

SECTION .bss

SECTION .text

global _start

_start: nop
       mov eax,4
       mov ebx,1
       mov ecx,EatMsg
       mov edx, [character]
       mov [ecx+1], dl
       xor edx, edx
       mov edx,EatLen
       add edx, 10
       int 80H

Exit:
       mov eax,1
       mov ebx,0
       int 80H
