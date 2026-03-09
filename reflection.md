Task 1 – Conceptual Questions
Q1

List<int> means the list only store integer numbers. But List<dynamic> can store different type like number, string, or bool. It is better to use List<int> because it make the code more clear and avoid mistake with wrong data type.

Q2

We start the max value with the first element because the numbers can be negative also. If we start with 0 or very small number, maybe the result become wrong when all numbers in the list are smaller than that.

Q3

This show code reuse idea. Instead of writing the same logic again, we just call the calculateSum() function. This make the code shorter and easier to change later.

Q4

for-in loop go through each value in the list one by one. It is easier when we only need the values. The normal for loop use index number to access items. We use that when we need the position also.

Q5

If the list is empty the program will give error because there is no first element. To solve this we can check if the list is empty first and then return a default value or show message.



Task 2 – Conceptual Questions
Q6

Synchronous function run step by step and finish before next line run. Asynchronous function can wait for something and continue later. In this program divide() is simple calculation so it is normal function, but computeAsync() wait for delay so it is async.

Q7

await tell the program to wait until the Future finish and give the result. If we forget await, the program will print something like Future instance instead of the real value.

Q8

The try-catch block help to handle errors. If someone try divide by zero the error will be caught and program will show message instead of stopping.

Q9

Throwing ArgumentError show clearly that the input value is wrong. Returning 0 is not good because it hide the real problem and user may think the result is correct.

Q10

The async keyword in main() allow us to use await. Without it we cannot wait for async functions easily and the program flow will be harder to manage.