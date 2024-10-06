# Makefile for writer application

# Compiler
CC = gcc

# Flags for native compilation
CFLAGS = -Wall

# If CROSS_COMPILE is specified, use the cross compiler
ifdef CROSS_COMPILE
CC = $(CROSS_COMPILE)gcc
endif

# Source files
SOURCES = writer.c

# Object files
OBJECTS = $(SOURCES:.c=.o)

# Output binary
TARGET = writer

# Default target to build the "writer" application
all: $(TARGET)

# Target for building the "writer" application
$(TARGET): $(OBJECTS)
	$(CC) $(CFLAGS) -o $(TARGET) $(OBJECTS)

# Target to remove the "writer" application and all .o files
clean:
	rm -f $(TARGET) $(OBJECTS)

