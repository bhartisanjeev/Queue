# Queue_DataStructure
Queue Operations

Queue is a very important and common Data Structure in Computer Science. As the name queue suggests, this data structure can be described with an analogy of waiting in a line. There is no cutting allowed in the line, so the first person in the line is the first person out of the line. With the data structure it is the same way First In First Out (FIFO).

The best way of managing the data in a queue in my opinion is by storing the data in a "circle" by this I mean that when we reach the end of the contiguous data if we have room at the beginning we can start filling in there. This data is stored kind of like a snake going through a circular pathway. The snake will grow and shrink as it travels along this path.

Methods of a Queue

There are only two functions which are required with a queue. One will insert data into the queue and one will remove data from the queue. (One to grow the snake and one to shrink the snake) We call these two functions Enqueue and Dequeue.

Enqueue is our method for adding new items to the queue. It will add the new items to the back of the queue.
Dequeue is our method for removing items from the queue. It will remove items from the front of the queue.
Since I like my collections to not be limited in size, we will also have a private function for increasing the size of the queue if we run out of space and need to add another element.

Common Implementations

We can implement the Queues using arrays as well as Link List. In my example I have implemented using Linklist.
