Use the language you're most comfortable with. The code doesn't have to be perfect since this isn't a compiler or IDE. We just expect to be able to read it and understand it.

Write a function called "reconcileHelper" that processes two arrays of integers.
Each array will have only distinct numbers (no repeats of the same integer in the same array), and the arrays are not sorted.
Your job is to find out which numbers are in array 1, but not array 2, and which numbers are in array 2, but not in array 1.

Your function should print the following text (not including "----------").

----------
Numbers in array 1 that aren't in array 2:
<num1> <num2> <num3>...

Numbers in array 2 that aren't in array 1:
<num1> <num2> <num3>...
----------

So for instance, if I passed in:
reconcileHelper([5, 3, 4], [4, 3, 6, 10])

The function would print:
Numbers in array 1 that aren't in array 2:
5

Numbers in array 2 that aren't in array 1:
6 10


Notes:
1) You are allowed to use any standard library functions that your language has. but if it has a way of doing this EXACT problem, please don't use it. (For example, if it has a way of subtracting one array from another).
2) If your language doesn't have a standard way of outputting text, just assume there is a function called "printLn(str)" that takes a string and prints it out to the console.
3) If you can, make your solution fast, so that it can handle over 100,000 elements in each array. In short, doing a linear search through array b, for every element in array a will work, but is probably too slow.
4) Clarity of your code is more important than raw typing speed. So, refactoring to improve your solution is just fine. We don't anticipate this taking you more than 30 minutes or so, but there is no hard limit.
