flags=-O2 -Wall -std=c2x
ldflags=-lbu

.PHONY: all clean

all: clean knifeuvm

knifeuvm: knifeuvm.o
	cc $(flags) $^ -o $@ $(ldflags)

knifeuvm.o: knifeuvm.c knifeuvm.h
	cc $(flags) -c $<

clean:
	rm -f *.o knifeuvm