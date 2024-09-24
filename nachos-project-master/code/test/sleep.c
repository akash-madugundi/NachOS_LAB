#include<syscall.h>

int main(){
        PrintString("Before Sleep\n");
        Sleep(1);      // 500000 ~ 1sec in exception.cc
        PrintString("After Sleep\n");
        Halt();
}

// #include "syscall.h"

// void process1() {
//     PrintString("Hello from Process 1!\n");
//     Exit(0);  // Terminate this thread
// }

// void process2() {
//     PrintString("Hello from Process 2!\n");
//     Exit(0);  // Terminate this thread
// }

// int main() {
//     ThreadFork(process1);  // Create the first thread
//     ThreadFork(process2);  // Create the second thread

//     // Optionally, perform some other task in the main thread
//     // This will allow the parent to finish before child threads if desired
//     PrintString("Main process exiting.\n");
//     Exit(0);
// }
