Name: Sharath Kumar Dayal

Topic: threads

Course: 5143 Operating Systems

Date: 08 Apr 2016

MId: M20227876


#### Question1: Explain the differences between Threads1 and Threads2 using lines from the code and a precise explanation.


Differnece in code for thread1 and Thread2:

Thread1: 

        for k in xrange(10000000):
  
            if k % 100000 == 0
            
                print 'A:', k

Thread2:  

        for k in xrange(10000000):

            if k % 100000 == 0:
            
                print 'A:', k, sharedCounter
                
            sharedCounter += 1
            

In Threads1 sharedCounter variable is not used. In Threads2, a variable sharedCounter is used. 
In Threads1 only k value is displayed, but in Threads2 sharedCounter is also displayed which is different from k.

SharedCounter will be incremented for each value of k in both the threads A & B.

Sharedcounter value is incremented when threadA executes and it is incremented when threadB executes,
but when the print statement is executed in either of the threads the final value of sharedcounter is displayed.


#### Question2: After running Thread3.py does it fix the problems that occured in Threads2.py? What's the down-side?

Yes the probelm occured in Thread2.py is fixed after running Thread3.py which use locks concept.

In Threads2.py  before executing the print statement in one function the control goes to other function and the sharedCounter value is incremented in it and
when print statement is called new sharedCounter is displayed and now the control goes to previous function and prints the new value of sharedCounter(may be incremented or remains same).
###### Here the race condition occurs.

In Threads3.py only after executing the print statement the control moves to other function.
Here one thread cannot modify when other thread is writing into the file, only after the lock is released by the first thread second thread can acquire it and writes into the file.
###### Race condition is resolved.


#### Question3: Comment out the join statements at the bottom of the program and describe what happens.

If join statements are commented out, main program starts execution but it completes before threadA and threadB completes.

If join statements are used, main program starts execution but when thread join statement is called it stops its execution and allows thread join to happen.
After the thread tremination is done main program will resume its execution.

#### Question4: What happens if you try to Ctrl-C out of the program before it terminates?

Keyboard interrupt occurs but the program will not terminate.
It will execute but waits for sometime and starts execution again.
If join statements are commented and press Ctrl-C before the program terminates, then the keyboard interrupt is ignored.

#### Question5: Read and run Threads4.py. This generates a different and more ridiculous race condition. Write concise explanation of what's happening to cause this bizarre behavior using lines from the code and precise explanation.

After running Threads4.py, a new race condition occurs which is more complex when compared to the one that occured after Threads2.py. This is happened because of commenting the lock.acquire and lock.release methods.

Also sharedNumber will never become 1 and prints the statement print 'A: that was weird' same with threadB.

Code because of which more complex race condition occurs:


        
            #self.lock.acquire()
            
            sharedNumber = 1
            
            if sharedNumber != 1:
            
                print 'A: that was weird'
            
            #self.lock.release()
        


#### Question6: Does uncommenting the lock operations clear up the problem in question 5?
Yes uncommenting the lock operations the problem in question5 is resolved.
