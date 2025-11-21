/*
 * process_creation.c
 * Lab 5 - Exercise 1: Using fork() in C
 * 
 * This program demonstrates process creation using the fork() system call.
 * Compile: gcc process_creation.c -o process_creation
 * Run: ./process_creation
 */

#include <stdio.h>
#include <unistd.h>

int main() {
    pid_t pid = fork();
    
    if (pid == 0) {
        printf("This is the child process. PID: %d\n", getpid());
    } else if (pid > 0) {
        printf("This is the parent process. PID: %d\n", getpid());
    } else {
        printf("Fork failed!\n");
    }
    
    return 0;
}
