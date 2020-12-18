CC=gcc
CFLAGS=-pedantic -W -Wall
DEBUGFLAG=-g
LFLAGS=-static -lBMPmini
EXEC=example
VPATH=src

all: libBMPmini.a $(EXEC).c
	$(CC) $(CFLAGS) -c $(EXEC).c
	$(CC) $(CFLAGS) $(EXEC).o -o $(EXEC) $(LFLAGS)

debug: libBMPmini.a $(EXEC).c
	$(CC) $(CFLAGS) $(DEBUGFLAG) -c $(EXEC).c
	$(CC) $(DEBUGFLAG) $(CFLAGS) $(EXEC).o -o $(EXEC) $(LFLAGS)

.PHONY: clean

clean:
	rm -v $(EXEC).o
	rm -v $(EXEC)
