#cpuid.s Sample program to extract the processor Vendor ID 
.section .data
output:
      .ascii "The processor Vendor ID is 'xxxxxxxxxxxx'\n" 
.section .text
.globl _start

_start:
  xor %eax, %eax       #zeroing
  cpuid                #cpuid with parameter(ebx) 0 return vendor ID
  movl $output, %edi 
  movl %ebx, 28(%edi)  #placing 4-bytes contiguosly in from position 28.  
  movl %edx, 32(%edi) 
  movl %ecx, 36(%edi) 

Write: 
  movl $4, %eax 
  movl $1, %ebx
  movl $output, %ecx
  movl $42, %edx 
  int  $0x80

Exit: 
  movl $1, %eax
  movl $0, %ebx
  int $0x80 





