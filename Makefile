# Makefile
CC = gcc
CFLAGS = -Wall -g
LIBS = -letpan

all: groomail

groomail: main.o imap.o
	$(CC) $(CFLAGS) -o groomail main.o imap.o $(LIBS)

main.o: main.c imap.h
	$(CC) $(CFLAGS) -c main.c

imap.o: imap.c imap.h
	$(CC) $(CFLAGS) -c imap.c

clean:
	rm -f *.o groomail
