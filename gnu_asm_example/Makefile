cpuid: test.o
	ld -o cpuid test.o

test.o: test.s
	as -gstabs -o test.o  test.s 

clean: 
	rm test.o cpuid
	
