/* exec.c
 *	Simple program to test the exec system call.
 */

#include "syscall.h"
#define stdin 0
#define stdout 1

int main() {
    int pid, pid2, pid3;
    int i;
    int mainpid = GetPid();
    pid = Exec("../test/num_io", 5);
    pid2 = Exec("../test/num_io2", 7);
    // Wait2(pid);                             // if no -> 2,3,1; if yes -> 1,2,3
    pid3 = Exec("../test/num_io3", 6);
    Wait2(pid);                             // if no -> 2,3,1; if yes -> 1,2,3
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
    // PrintNum(mainpid);
    // PrintNum(pid);
    // PrintNum(pid2);
    // PrintNum(pid3);
}
