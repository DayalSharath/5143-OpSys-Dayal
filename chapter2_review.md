# Chapter 2 Review Questions
# Name: Sharath Kumar Dayal
# Course: 5143 Operating Systems
# Date: 17 Feb 2016

## Question 1. What are three objectives of an OS design?
An operating system is a software that runs on the computer. It manages the computer's memory, processes, and all of its software and hardware i.e., it acts as an interface between applications and the computer hardware.  
The three objectives of OS are:

 • Convenience: An OS makes a computer more convenient to use by using standard library programs or utilities. 
 
 • Efficiency: An OS allows the computer system resources to be used in an efficient manner. Super computers and mainframe computers mainly focus on efficiency than convenience.
 
 • Ability to evolve: An existing OS should be constructed in such a way that it should support the new system functions without interfering with service.

## Question 2. What is the kernel of an OS?
Kernel is the part of the operating system that loads first, and it remains in main memory, so it should be as small as possible. The kernel is the central module of an operating system (OS).
The kernel code is usually loaded into a protected area of memory to prevent it from being overwritten by programs or other parts of the operating system.
The kernel performs its tasks, such as executing processes and handling interrupts, in kernel space,
When a process makes requests of the kernel, the request is called a system call.

## Question 3. What is multiprogramming?
Multiprogramming is a form of parallel processing in which several programs  run at the same time. In a multiprogramming system there are one or more programs loaded in main memory which are ready to execute. Only one program at a time is able to get the CPU for executing its instructions (i.e., there is at most one process running on the system) while all the others are waiting their turn. The main idea of multiprogramming is to maximize the use of CPU time. 

## Question 4. What is a process?
A process can be defined as:
•	A program in which is under execution
•	An instance of a program running on a computer
•	The entity that can be assigned to and executed on a processor
•	A unit of activity characterized by a single sequential thread of execution, a current state, and an associated set of system resources.
We can also think of a process as an entity that consists of a number of elements. Two essential elements of a process are program code and a set of data associated with that code.

##  Question 5. How is the execution context of a process used by the OS?
The execution context of a process used by the OS is also known as "process states" i.e., explaining about the different states that a program undergoes from starting to ending. There are different models to explain this.
# a. Two - state process model:
Not running state:  When the OS creates a new process, it creates a process control block for the process and new process will be in not running state.
Running state: A process which is already under execution occupies some memory of OS, then the process is said to be in running state.
# b. Five - state process model:
New State: A process which is created but not started execution will be in new state. Process control block will be created for a process in new state but it is not loaded into main memory.
Ready state: The process is prepared to execute when given the opportunity.
Running state: A process which is currently being executed will be in running state.
Blocked state: A process that cannot execute until some event occurs will be in blocked/waiting state.
Exit: A process which completes execution or is aborted for some reason will move to exit state.

##  Question 6. List and briefly explain five storage management responsibilities of a typical OS.
The five storage management responsibilities of a typical OS are:
a. Process isolation: This is the prevention of data and instruction from interfering with each other process isolation helps this happen.
b. Automatic allocation and management: The memory required by all the programs should be dynamically allocated by the OS to achieve efficiency and thus, the programmer is relieved of concerns relating to memory limitations.
c. Support of modular programming: Supports the program to be able to define programs modules and to create, destroy and alter the size of modules dynamically
d. Protection and access control:  This is the process of sharing memory, this is desirable when sharing is needed by a particular application it also threatens the integrity of programs.
e. Long term storage: Is a process whereby memory is stored for a long period of time even when the computer is switch off it is stored in the RAM.

##  Question 7. Explain the distinction between a real address and a virtual address.
•	A real address (also physical address, or binary address), is a memory address that is represented in the form of a binary number on the address bus circuitry in order to enable the data bus to access a particular storage cell of main memory, or a register of memory mapped I/O device.
•	Physical addresses refer to hardware addresses of physical memory.
•	A virtual address is a binary number in virtual memory that enables a process to use a location in main memory independently of other processes and to use more space than actually exists in primary storage by temporarily relegating some contents to a hard disk or internal flash drive.
•	Virtual addresses refer to the virtual store viewed by the process.

##  Question 8. Describe the round-robin scheduling technique.
Round robin is the scheduling algorithm used by the CPU during execution of the process. It is designed specifically for time sharing systems and it is pre-emptive algorithm. A small unit of time also known as time slice or quantum is defined. All processes are kept in the circular queue also known as ready queue. 
CPU assigns time quanta to each process in equal proportion and in circular order without any priority. CPU selects a process from ready state and if the burst time of the process is less than time quanta, process will complete its execution and gets terminated, else process will execute until time  quanta is completed. If the process execution is completed it will get terminated else it goes to ready state and new process which is in ready state gets picked up by the CPU for execution.
There will no starvation problem by using round robin algorithm. Every process will be executed by CPU for fixed interval of time. So in this way no process left waiting for its turn to be executed by the CPU.

##  Question 9. Explain the difference between a monolithic kernel and a microkernel.
 A monolithic kernel is implemented as a single process, with all elements sharing the same address space.  It executes all the operating system instructions in the same address space in order to improve the performance of the system.
 A microkernel architecture assigns only a few essential functions to the kernel, including address spaces, interprocess communication (IPC), and basic scheduling.   It runs most of the operating system's background processes in user space, to make the operating system more modular and, therefore, easier to maintain.
 
##  Question 10. What is multithreading?
Multithreading is a technique in which a process, executing an application, is divided into threads that can run concurrently. A dispatchable unit of work is called as thread.
By breaking a single application into multiple threads, the programmer has great control over the modularity of the application and the timing of application-related events. 
Multithreading is useful for applications that perform a number of essentially independent tasks that do not need to be serialized.

##  Question 11. List the key design issues for an SMP operating system.
SMP (symmetric multiprocessing) is the processing of programs by multiple processors that share a common operating system and memory.
Key design issues for SMP are:
1. Simultaneous concurrent processes or threads: Kernel routines must allow several processors to execute the same kernel code simultaneously.
2. Scheduling: Scheduling may be performed by any processor, so conflicts must be avoided.
3. Synchronization: With multiple active processes having potential access to shared address spaces or shared I/O resources, care must be taken to provide effective synchronization
4. Memory Management: Memory management on a multiprocessor must deal with all of the issues found on uniprocessor machines. Problems related to cache memories like cache coherence may occur and this is solved in hardware.
5. Reliability and fault tolerance: The operating system should provide graceful degradation when there is a processor failure.
