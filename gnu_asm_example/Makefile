cpuid: stack.o
	ld -o stack stack.o

stack.o: stack.s
	as -gstabs -o stack.o  stack.s 

clean: 
	rm stack.o stack
	
