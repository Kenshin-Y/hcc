CFLAGS=-std=c11 -g -static

hcc: hcc.c

test: hcc
	./test.sh

run:
	cc -o hcc hcc.c
	./hcc 123 > tmp.s

clean:
	rm -f hcc *.o *~ tmp*

.PHONY: test clean