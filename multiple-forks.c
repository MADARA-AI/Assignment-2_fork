/*
 * file2.c
 * Lab 5 - Exercise 5: Role of the Linker (Part 2)
 * 
 * This file declares and calls hello() function defined in file1.c.
 * The linker connects this call to the definition in file1.c.
 * Compile together with file1.c: gcc file1.c file2.c -o output_program
 */

void hello();

int main() {
    hello();
    return 0;
}
