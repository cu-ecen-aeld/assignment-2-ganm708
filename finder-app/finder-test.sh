#!/bin/bash

# Clean any previous build artifacts
make clean

# Compile the writer application using native compilation
make

# Execute the "writer" utility with command-line arguments
./writer "This is a sample text." output.txt

