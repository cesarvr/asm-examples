#cpuid.s Sample program to extract the processor Vendor ID 
.code32
.section .data
data:
  .int 120
       
.section .text
.globl _start

_start:
  movl $24420, %ecx 
  movw $350, %bx 
  movl $100, %eax
  pushl %ecx
  pushw %bx
  pushl %eax
  pushl $data
  
  popl %eax 
  popl %eax 
  popl %eax 
  popw %ax
  popl %eax 
  
  movl $0, %ebx 
  movl $1, %eax 
  int $0x80
