/* Start.s
 *	Assembly language assist for user programs running on top of Nachos.
 *
 *	Since we don't want to pull in the entire C library, we define
 *	what we need for a user program here, namely Start and the system
 *	calls.
 */

#define IN_ASM
#include "syscall.h"

        .text
        .align  2

/* -------------------------------------------------------------
 * __start
 *	Initialize running a C program, by calling "main".
 *
 * 	NOTE: This has to be first, so that it gets loaded at location 0.
 *	The Nachos kernel always starts a program by jumping to location 0.
 * -------------------------------------------------------------
 */

	.globl __start
	.ent	__start
__start:
	jal	main
	move	$4,$0
	jal	Exit	 /* if we return from main, exit(0) */
	.end __start

/* -------------------------------------------------------------
 * System call stubs:
 *	Assembly language assist to make system calls to the Nachos kernel.
 *	There is one stub per system call, that places the code for the
 *	system call into register r2, and leaves the arguments to the
 *	system call alone (in other words, arg1 is in r4, arg2 is
 *	in r5, arg3 is in r6, arg4 is in r7)
 *
 * 	The return value is in r2. This follows the standard C calling
 * 	convention on the MIPS.
 * -------------------------------------------------------------
 */

	.globl Halt
	.ent	Halt
Halt:
	addiu $2,$0,SC_Halt
	syscall
	j	$31
	.end Halt

	.globl Add
	.ent	Add
Add:
	addiu $2,$0,SC_Add
	syscall
	j 	$31
	.end Add

    .globl Mul
    .ent    Mul
Mul:
    addiu $2,$0,SC_Mul
    syscall
    j       $31
    .end Mul

    .globl StartClock
    .ent    StartClock
StartClock:
    addiu $2,$0,SC_StartClock
    syscall
    j       $31
    .end StartClock

    .globl StopClock
    .ent    StopClock
StopClock:
    addiu $2,$0,SC_StopClock
    syscall
    j       $31
    .end StopClock

    .globl Sleep
    .ent    Sleep
Sleep:
    addiu $2,$0,SC_Sleep
    syscall
    j       $31
    .end Sleep

	.globl Exit
	.ent	Exit
Exit:
	addiu $2,$0,SC_Exit
	syscall
	j	$31
	.end Exit

	.globl Exec
	.ent	Exec
Exec:
	addiu $2,$0,SC_Exec
	syscall
	j	$31
	.end Exec

	.globl ExecV
	.ent	ExecV
ExecV:
	addiu $2,$0,SC_ExecV
	syscall
	j	$31
	.end ExecV

	.globl Join
	.ent	Join
Join:
	addiu $2,$0,SC_Join
	syscall
	j	$31
	.end Join

	.globl Create
	.ent	Create
Create:
	addiu $2,$0,SC_Create
	syscall
	j	$31
	.end Create

	.globl Remove
	.ent	Remove
Remove:
	addiu $2,$0,SC_Remove
	syscall
	j	$31
	.end Remove

	.globl Open
	.ent	Open
Open:
	addiu $2,$0,SC_Open
	syscall
	j	$31
	.end Open

	.globl Read
	.ent	Read
Read:
	addiu $2,$0,SC_Read
	syscall
	j	$31
	.end Read

	.globl Write
	.ent	Write
Write:
	addiu $2,$0,SC_Write
	syscall
	j	$31
	.end Write

	.globl Close
	.ent	Close
Close:
	addiu $2,$0,SC_Close
	syscall
	j	$31
	.end Close

	.globl Seek
	.ent	Seek
Seek:
	addiu $2,$0,SC_Seek
	syscall
	j	$31
	.end Seek

        .globl ThreadFork
        .ent    ThreadFork
ThreadFork:
        addiu $2,$0,SC_ThreadFork
        syscall
        j       $31
        .end ThreadFork

        .globl ThreadYield
        .ent    ThreadYield
ThreadYield:
        addiu $2,$0,SC_ThreadYield
        syscall
        j       $31
        .end ThreadYield

	.globl ThreadExit
	.ent    ThreadExit
ThreadExit:
	addiu $2, $0, SC_ThreadExit
	syscall
	j 	$31
	.end ThreadExit

	.globl ThreadJoin
	.ent    ThreadJoin
ThreadJoin:
	addiu $2, $0, SC_ThreadJoin
	syscall
	j 	$31
	.end ThreadJoin

	.globl ReadNum
	.ent	ReadNum
ReadNum:
	addiu $2,$0,SC_ReadNum
	syscall
	j	$31
	.end ReadNum

	.globl PrintNum
	.ent	PrintNum
PrintNum:
	addiu $2,$0,SC_PrintNum
	syscall
	j	$31
	.end PrintNum

	.globl ReadChar
	.ent	ReadChar
ReadChar:
	addiu $2,$0,SC_ReadChar
	syscall
	j	$31
	.end ReadChar

	.globl PrintChar
	.ent	PrintChar
PrintChar:
	addiu $2,$0,SC_PrintChar
	syscall
	j	$31
	.end PrintChar

	.globl RandomNum
	.ent	RandomNum
RandomNum:
	addiu $2,$0,SC_RandomNum
	syscall
	j	$31
	.end RandomNum

	.globl ReadString
	.ent ReadString
ReadString:
	addiu $2,$0,SC_ReadString
	syscall
	j	$31
	.end ReadString

	.globl PrintString
	.ent PrintString
PrintString:
	addiu $2,$0,SC_PrintString
	syscall
	j	$31
	.end PrintString

	.globl ReplString
	.ent ReplString
ReplString:
	addiu $2,$0,SC_ReplString
	syscall
	j	$31
	.end ReplString

	.globl CreateFile
	.ent	CreateFile
CreateFile:
	addiu $2,$0,SC_CreateFile
	syscall
	j	$31
	.end CreateFile

	.globl CreateSemaphore
	.ent	CreateSemaphore
CreateSemaphore:
	addiu $2,$0,SC_CreateSemaphore
	syscall
	j	$31
	.end CreateSemaphore

	.globl Wait
	.ent	Wait
Wait:
	addiu $2,$0,SC_Wait
	syscall
	j	$31
	.end Wait

	.globl Signal
	.ent	Signal
Signal:
	addiu $2,$0,SC_Signal
	syscall
	j	$31
	.end Signal

	.globl GetPid
	.ent	GetPid
GetPid:
	addiu $2,$0,SC_GetPid
	syscall
	j	$31
	.end GetPid

/* dummy function to keep gcc happy */
        .globl  __main
        .ent    __main
__main:
        j       $31
        .end    __main
