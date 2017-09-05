#cpuid.s Sample program to extract the processor Vendor ID 
.data
output:
      .ascii "The processor Vendor ID is -> %d \n" 

.bss
  .lcomm buffer, 12 

.text
.globl _start
_start:

  xor %eax, %eax       #zeroing
  cpuid                #cpuid with parameter(ebx) 0 return vendor ID
  movl $buffer, %edi 
  movl %ebx,   (%edi)  #placing 4-bytes contiguosly in from position 28.  
  movl %edx,  4(%edi) 
  movl %ecx,  8(%edi) 

Write: 
  pushl $buffer 
  pushl $output 
  call  printf 
 

Exit: 
  addl  $8, %esp 
  pushl $0
  call exit 





