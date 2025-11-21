/*
 * simple_program.c
 * Lab 5 - Exercise 6: Role of the Loader
 * 
 * A simple program to demonstrate dynamic library loading.
 * Compile: gcc simple_program.c -o simple_program
 * Run: ./simple_program
 * Check libraries: ldd simple_program
 */

#include <stdio.h>

int main() {
    printf("This is a simple program.\n");
    return 0;
}
