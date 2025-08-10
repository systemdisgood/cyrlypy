CC=clang
#CC=gcc
CFLAGS=-c -Wall -pedantic -std=c89
LDFLAGS= -lm
SOURCES=cyrlypy.c
OBJECTS=$(SOURCES:.c=.o)
EXECUTABLE=cyrlypy.out

all: $(SOURCES) $(EXECUTABLE)

$(EXECUTABLE): $(OBJECTS)
	$(CC) $(LDFLAGS) $(OBJECTS) -o $@
	rm ./*.o

.c.o:
	$(CC) $(CFLAGS) $< -o $@

