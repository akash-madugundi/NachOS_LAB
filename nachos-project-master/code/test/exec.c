/* exec.c
 *	Simple program to test the exec system call.
 */

#include "syscall.h"
#define stdin 0
#define stdout 1

int main() {
    int pid, pid2;
    int i;
    pid = Exec("../test/num_io", 5);
    pid2 = Exec("../test/num_io2", 7);
    
    if (pid < 0) {
        Write("Exec failed: ", 14, stdout);
        PrintNum(pid);
    } 
    // else
    //     Join(pid);
    // while(1){
        for(i=1; i<200; i++){
            PrintString("In prog: [exec]\n");
        }
    // }
}
