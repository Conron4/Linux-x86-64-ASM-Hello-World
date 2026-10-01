hello:
	as hello.s -o hello.o
	ld hello.o -o hello
clean:
	rm *.o
	rm hello