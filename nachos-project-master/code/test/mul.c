#include<syscall.h>

int main(){
        int result;
        result=Mul(2,5);
        PrintNum(result);
        // Sleep(10);
        Halt();
}