# Makefile for Assignment 2: Basic Forks and C Style Development
# CSE233 - Operating Systems - Lab 5
#
# Usage:
#   make          - Build all programs
#   make run      - Build and run all programs
#   make clean    - Remove compiled files

# Compiler and flags
CC = gcc
CFLAGS = -Wall

# Executable names
TARGETS = process_creation output_program simple_program

# Default target: build all programs
all: $(TARGETS)
	@echo ""
	@echo "=== All programs compiled successfully! ==="
	@echo ""

# Exercise 1: Process creation with fork()
process_creation: process_creation.c
	$(CC) $(CFLAGS) process_creation.c -o process_creation

# Exercise 5: Linker demonstration - linking two files together
output_program: file1.c file2.c
	$(CC) $(CFLAGS) file1.c file2.c -o output_program

# Exercise 6: Loader demonstration
simple_program: simple_program.c
	$(CC) $(CFLAGS) simple_program.c -o simple_program

# Run all programs
run: all
	@echo ""
	@echo "========================================"
	@echo "Exercise 1: Running process_creation"
	@echo "========================================"
	./process_creation
	@echo ""
	@echo "========================================"
	@echo "Exercise 5: Running output_program"
	@echo "========================================"
	./output_program
	@echo ""
	@echo "========================================"
	@echo "Exercise 6: Running simple_program"
	@echo "========================================"
	./simple_program
	@echo ""
	@echo "========================================"
	@echo "Exercise 6: Checking libraries with ldd"
	@echo "========================================"
	ldd ./simple_program

# Clean up compiled files
clean:
	rm -f $(TARGETS)
	@echo "Cleaned up all compiled files."

# Phony targets
.PHONY: all run clean
