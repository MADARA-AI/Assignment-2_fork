# Assignment 2 - Basic Forks and C Style Development

This repository contains C programs demonstrating process creation, the role of the linker, and the role of the loader in operating systems.

## Description

The project includes three exercises from Lab 5 that demonstrate fundamental operating system and C development concepts:

- **Exercise 1**: Process creation using the `fork()` system call
- **Exercise 5**: Understanding the linker by compiling multiple source files
- **Exercise 6**: Understanding the loader and dynamic libraries using `ldd`

## Getting Started

### Prerequisites

- GCC (GNU Compiler Collection)
- Make
- Linux/Unix operating system (or WSL on Windows)

Install prerequisites on Ubuntu/Debian:
```bash
sudo apt install gcc make
```

### Installation

Clone the repository:
```bash
git clone https://github.com/yourusername/assignment2-basic-forks.git
cd assignment2-basic-forks
```

### Building

Build all programs:
```bash
make
```

Or compile manually:
```bash
gcc process_creation.c -o process_creation
gcc file1.c file2.c -o output_program
gcc simple_program.c -o simple_program
```

## Usage

### Run All Programs
```bash
make run
```

### Run Individual Programs

**Exercise 1 - Fork demonstration:**
```bash
./process_creation
```

**Exercise 5 - Linker demonstration:**
```bash
./output_program
```

**Exercise 6 - Loader demonstration:**
```bash
./simple_program
ldd ./simple_program
```

### Clean Build Files
```bash
make clean
```

## Project Structure

```
.
├── README.md           # This file
├── LICENSE             # MIT License
├── Makefile            # Build automation
├── answers.txt         # Explanations of code, linker, and loader
├── process_creation.c  # Exercise 1: fork() demonstration
├── file1.c             # Exercise 5: Defines hello() function
├── file2.c             # Exercise 5: Calls hello() function
└── simple_program.c    # Exercise 6: Loader demonstration
```

## Exercises Explained

### Exercise 1: fork() System Call
The `fork()` function creates a new process. It returns 0 to the child process and the child's PID to the parent process.

### Exercise 5: The Linker
The linker combines object files (`file1.o` and `file2.o`) into a single executable, resolving symbol references between them.

### Exercise 6: The Loader
The loader loads the executable into memory at runtime and loads required shared libraries (visible using `ldd`).

## Author

Mohamed Soliman 


