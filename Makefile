flags=-O2 -Wall -std=c2x
ldflags=-lbu

.PHONY: all clean

all: clean knifeuVM

knifeuVM: knifeuVM.o
	cc $(flags) $^ -o $@ $(ldflags)

knifeuVM.o: knifeuVM.c knifeuVM.h
	cc $(flags) -c $<

clean:
	rm -f *.o knifeuVM