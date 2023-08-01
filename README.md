# My CS61A

My solutions for [CS 61A Spring 2022](https://inst.eecs.berkeley.edu/~cs61a/sp22)
_____

## Feeling

### week 1: Varibles & Functions, Control

Something like intro for programming

### week 2: Control, Higher-Order Functions

> `Higher-Order Functions` is A function that either:
>
> Takes another function as an argument
>
> Returns a function as its result

I shall admit that using Higher-Order Functions and lambda expression is sth novel for me

It's really...abstract and elegant in python to write like that

'cause in C, I shall consider a lot about function pointers

### week 3: Hog

Here comes the 1st project Hog

It's cozy to not consider about function pointers, though they always cross into my mind as I completing the project

So, we abstract and reuse the code we have written, (DRY, Don't Repeat Yourself)

the stuffs had already provided with a fine scaffold

### week 4: Recursion, Tree Recursion

Well, I'm not a smart one that grasp Recursion easily, even now I dare not say I do

What really suprises me is writing a helper function inside a function

> If you need to keep track of more than one value across recursive calls, consider writing a helper function.

And closure as well as Decoration is really cool

Actually most problems can also use loop with a stack to fix

### week 5: Cats

Hmm~ It seems that the project has nothing with cats, expect some picture

> CS 61A Autocorrected Typing Software

And its name of cause

### week 6: Python Lists, Object-Oriented Programming

The `@classmethod` and etc are a bit complex for me, though the course does not require much about it

> Actually did, in the next week 7 project

### week 7: Ants

It looks like the `@classmethod` is more like static methods in C++, as `@staticmethod` cannot access class members

Plus, in python it's really cozy to write a class, you do not need to explicitly declare the instance member before you assign it

However, this also made me forget to add a `self.`, maybe it's just too free

This week also taught `Tree` and `Linkedlist`, as example for `Recursive objects`

### week 8: Iterators, Generators, Efficiency

I had knew about Generators, but I didn't fully understand it

And it's good to implement a Iterator by self

### week 9: Midterm

For now I did not finish any discussion, It's a pity

This week also include Project 0: lambda-ing

### week 10: Break

### week 11:
### week 12:

#### 非常恼人的 BUG

在做 EC 的时候，一直过不了，提示递归太多层了，于是我找了半天，没有办法只好从 GitHub 上找到一个前人 @ https://github.com/1eaff/ucb-cs61a/tree/master/projs/scheme做过的，下载下来挨个比对，比对了半天，终于发现在 scheme_forms 文件中有一段 #EC 的注释，具体的改正似乎是在 执行 scheme_eval 的时候，部分调用，增加了第三个参数 为 True，我不知道为什么这样改了之后就可以过了，很奇怪,似乎是实现尾递归优化后，修改的 scheme_eval 就添加了第三个参数，即是否开启尾递归优化，这样的化，就需要在之前实现的诸如加法、乘法中手动开启优化，显然不优化的话，给的测试就会爆堆栈，吧，总之找了很多，看到 @ 大概也和我一开始一样没有发现，在ta的代码里留下了
https://github.com/YinY1/CS61A-su22/blob/master/proj/scheme/scheme_eval_apply.py#L153
>   # strange that this is the same as the other answers, but it cannot pass ok test 
>   # so fuck it

### week 13:
### week 14:
### week 15:
### week 16:
### week 17:

## Recording

Right now is 14th July of 2023,17:00 PM

And I just finished week 1 to 9,excluding all the discussion

Afterwards coming the Scheme, and I'm gonna take a "week 10" break

Since originally the WEEK 10 is just described as `No Lecture: Spring Break`

I started taking this on Tue Jun 27 2023


