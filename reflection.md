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