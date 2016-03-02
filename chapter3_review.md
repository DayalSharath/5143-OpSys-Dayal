## Chapter 3 Review Questions
Name: Sharath Kumar Dayal

Course: 5143 Operating Systems

Date: 02 March 2016

#### Question 1. What does it mean to preempt a process?
	Pre-emption of a process refers to the temporary interruption and suspension of a process, without asking for its cooperation, with the intention to resume that process later. This act is called a context switch.

	This is performed by the pre-emptive scheduler, a component in the operating system authorized to pre-empt, or interrupt, and later resume tasks running in the system.

#### Question 2. What is swapping and what is its purpose?
	Swapping is a simple process management technique used by the operating system(os) for moving some blocked process from the main memory to the secondary memory(hard disk).

	Purpose of swapping is to maximize the number of processes in the system.

#### Question 3. List three general categories of information in a process control block.
	Process control block (PCB) is a data structure which contains all the information about the processes which is created and managed by OS. General categories of information in PCB are:

•	Process identification: Stores the identifiers of the process.

•	Processor state information: Stores the contents of the processor registers.

•	Process control information: Stores the additional information required by the OS to control various active processes.

#### Question 4. Why are two modes (user and kernel) needed?
	Kernel mode and User mode  are operating modes for the central processing unit of some computer architectures that place restrictions on the type and scope of operations that can be performed by certain processes being run by the CPU.

	The processor switches between the two modes depending on what type of code is running on the processor. Applications run in user mode, and core operating system components run in kernel mode. While many drivers run in kernel mode, some drivers may run in user mode.

#### Question 5. What is the difference between an interrupt and a trap?
	Interrupts are hardware interrupts, while traps are software-invoked interrupts. Occurrences of hardware interrupts usually disable other hardware interrupts, but this is not true for traps. If you need to disallow hardware interrupts until a trap is served, you need to explicitly clear the interrupt flag. 

	Unlike traps, interrupts should preserve the previous state of the CPU.

#### Question 6. Give three examples of an interrupt.
Hardware interrupts:

	Pressing a key on the keyboard  cause the processor to read the keystroke.  

	Moving the mouse cause the processor to mouse position.

Software interrupts:

	Divide a number by zero, this impossible demand will cause a divide-by-zero exception.

#### Question 7. What is the difference between a mode switch and a process switch?
	A process switch is what it is called when the processor switches from one thread/process to another. This causes the contents of the CPU registers and instruction pointer to be saved. The registers and instruction pointer for the new task will then be loaded into the processor and execution of the new process will start/resume.

	A mode switch is what is referred to when the CPU changes privilege levels. The kernel works at a higher privilege than a standard user task. In order for the user task to access things controlled by the kernel, it is necessary for a mode switch to occur.
