#cpuid.s Sample program to extract the processor Vendor ID 
.section .data
output:
  .asciz "The processor Vendor ID is -> '%s' \n" 
.section .bss
  .lcomm buffer, 12 
.section .text
.globl _start
_start:
  movl $0, %eax       #zeroing
  cpuid                #cpuid with parameter(ebx) 0 return vendor ID
  movl $buffer, %edi 
  movl %ebx,   (%edi)  #placing 32-bit (4 byte) in EDI [0..4]
  movl %edx,  4(%edi)  #placing 32-bit (4 byte) in EDI [4..8]
  movl %ecx,  8(%edi)  #placing 32-bit (4 byte) in EDI [8..12]
  pushq $buffer 
  pushq $output 
  call  printf 
  addl  $8, %esp 
  pushq $0
  call exit 





