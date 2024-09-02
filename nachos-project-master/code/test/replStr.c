#include "syscall.h"
char a[256];
int main() {
    StartClock();
    // char c;
    PrintString("String length: (<= 255):\n");
    ReadString(a, ReadNum());
    PrintString(a);
    // c = ReadChar();
    ReplString(a);
    PrintString(a);
    StopClock();
    Halt();
}
