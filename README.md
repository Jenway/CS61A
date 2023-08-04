# My CS61A

My solutions for [CS 61A Spring 2022](https://inst.eecs.berkeley.edu/~cs61a/sp22)

---

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

### week 11: Scheme

### week 12: Scheme Interpreter

#### An annoying BUG

Couldn't pass the tests when working on the extra credit (EC) part of the project, it continuously giving "recursion depth exceeded" error

So I just find other's solutions on GitHub, download and compare

> the solution is from `@1eaff`'s [`ucb-cs61a` repo](https://github.com/1eaff/ucb-cs61a/tree/master/projs/scheme )

After a thorough comparison, I finally noticed a commented section with #EC in the file `scheme_forms.py`

It seems that the crucial change was made in the execution of `scheme_eval` function, where a third parameter was added with the value True. I'm not entirely sure why this modification worked, but it appears to be related to implementing tail recursion optimization. With this change, I needed to manually enable optimization in functions like addition and multiplication. Otherwise, the provided tests , without tail recursion optimization, would just recurse for a too deep depth, and the program just crack

While researching the problem, I also came across the code from `@YinY1` on GitHub, this fellow seems to have faced a similar challenge, leaving a comment in [the code](https://github.com/YinY1/CS61A-su22/blob/master/proj/scheme/scheme_eval_apply.py#L153):

which , like below

``` python
# strange that this is the same as the other answers, but it cannot pass ok test
# so fuck it
```
### week 13: Scheme Data Abstraction, Programs as Data

### week 14: ReExp and BNF

2 declaratice domain-specific languages

### week 15:

Here comes the final and this was the CS61A ! 🎇

#### What did we learn?

**_Programming paradigms_**

> Imperative programming: using statements to change a program's state.

```python
nums = [1, 2, 4]
for i in range(0, len(nums)):
    nums[i] = nums[i] ** 2
```

**_Functional programming_**

> expressions, not statements; no side-effects; use of higher-order functions.

```python
list(map(lambda x: x ** 2, [1, 2, 4]))
```

```scheme
(map (lambda (n) (expt n 2)) '(1 2 4))
```

**Object-oriented and data-centric programming**

``` python
innocent_bee = Bee(5)
horrible_ant = Ant(10)
innocent_bee.fend_off(horrible_ant)
```
``` scheme
(define t
    (tree 3
            (list (tree 1 nil)
                (tree 2 (list (tree 1 nil) (tree 1 nil))))))
(map label (branches t))
```
**Declarative programming**

>  State goals or properties of the solution rather than procedures.

``` apl
(.+)@(.+)\.(.{3})
```
```yaml
calc_op: "(" OPERATOR calc_expr* ")"
```
#### Programming concepts

- **Data storage**:
	- Primitive/simple types: booleans, numbers, strings
	- Compound types: lists, linked lists, trees

- **Environments:** rules for how programs access and modify named objects

- **Higher-order functions:** Functions as data values, functions on functions

- **Recursion:** approaching a problem recursively, general recursive patterns

- **Mutability:** mutable objects, mutation operations, dangers of mutation

- **Exceptions:** Dealing with errors

- **Efficiency:** Different programs have different time/space needs

#### Software engineering

- Abstractions, separation of concerns
- Specification of a program vs. its implementation
	- Syntactic spec (header) vs. semantic spec (docstring).
	- Example of multiple implementations for the same abstract behavior
- Testing: for every program, there is a test.

Remember: code isn't just read by computers, it's also read by humans.

#### Practice programming

- Programming puzzles (HackerRank, LeetCode, Euler)

- Programming contests (Advent of Code, Kaggle)

- Hackathons

- More paradigms and languages (Web dev, Embedded)

- The open-source world: Go out and build something!

- Personal projects

- Above all: Have fun!

#### Future CS courses

- CS61B: (conventional) data structures, statically typed production languages.
- CS61C: computing architecture and hardware as programmers see it.
- CS70: Discrete Math and Probablilty Theory.
- CSC100: Data Science
- CS170 , CS171, CS172, CS174: “Theory”—analysis and construction of algorithms, cryptography, computability, complexity, combinatorics, use of probabilistic algorithms and analysis.
- CS161: Security
- CS162: Operating systems.
- CS164: Implementation of programming languages
- CS168: Introduction to the Internet
- CS160, CS169: User interfaces, software engineering
- CS176: Computational Biology
- CS182, CS188, CS189: Neural networks, Artificial intelligence, Machine Learning
- CS184: Graphics
- CS186: Databases
- CS191: Quantum Computing
- CS195: Social Implications of Computing
- EECS 16A, 16B: Designing Information Systems and Devices
- EECS 126: Probabilty and Random Processes
- EECS149: Embedded Systems
- EECS 151: Digital Design
- CS194: Special topics. (E.g.) computational photography and image manipulation, cryptography, cyberwar.
- Plus graduate courses on these subjects and more.
- And please don't forget CS199 and research projects.

#### Plus EE courses...

- EE105: Microelectronic Devices and Circuits.
- EE106: Robotics
- EE118, EE134: Optical Engineering, Photovotalaic Devices.
- EE120: Signals and Systems.
- EE123: Digital Signal Processing.
- EE126: Probability and Random Processes.
- EE130: Integrated Circuit Devices.
- EE137A: Power Circuits.
- EE140: Linear Integrated Circuits (analog circuits, amplifiers).
- EE142: Integrated Circuits for Communication.
- EE143: Microfabrication Technology.
- EE147: Micromechanical Systems (MEMS).
- EE192: Mechatronic Design.

#### Learn more Python!

- [More built-in data types](https://docs.python.org/3/library/datatypes.html): sets, deques, datetime
- [Generator expressions](https://realpython.com/introduction-to-python-generators/#understanding-generators)
- [Threading](https://docs.python.org/3/library/threading.html#module-threading), [multiprocessing](https://docs.python.org/3/library/multiprocessing.html), [queues](https://docs.python.org/3/library/queue.html)
- [Nonlocal/global](https://realpython.com/python-scope-legb-rule/)
- More Python standard library modules: datetime, math, functools, urllib, etc.

#### Fun with Python 🎉 🐍

#### What can you do with Python?

Almost anything! Thanks to libraries!

- Webapp backends (Flask, Django)
- Web scraping (BeautifulSoup)
- Natural Language Processing (NLTK)
- Data analysis (Numpy, Pandas, Matplotlib)
- Machine Learning (FastAi, PyTorch, Keras)
- Scientific computing (SciPy)
- Games (Pygame)
- Procedural generation - L Systems, Noise, Markov

#### Web scraping & Markov chains

**Web scraping**: Getting data from webpages by traversing the HTML.

**Markov chain**: A way to generate a sequence based on the probabalistic next token.

![Markov diagram](https://sookocheff.com/post/nlp/ngram-modeling-with-markov-chains/following-transitions-from-I.png)

[👉🏽 Demo: Composing Gobbledygooks](https://replit.com/@PamelaFox2/BeautifulSoupDemo)

Further learning: [urllib2 module](https://docs.python.org/3/howto/urllib2.html), [BeautifulSoup docs](https://www.crummy.com/software/BeautifulSoup/bs4/doc/), [N-Gram modeling with Markov chains](https://sookocheff.com/post/nlp/ngram-modeling-with-markov-chains/), CS70/EECS126 for Markov chains

#### Web APIs

**API** (Application Programming Interface): A way to access the functionality or data of another program.

**Web APIs**: A way to access the functionality or data of an online web service. Typically over HTTP or via JavaScript.

[👉🏽 Demo: Movie Mashups](https://replit.com/@PamelaFox2/BeautifulSoupDemo-MovieMarkov)



Further learning: [urllib2 module](https://docs.python.org/3/howto/urllib2.html), [The Movie DB API](https://developers.themoviedb.org/3), [ProgrammableWeb](https://www.programmableweb.com/)

#### Turtle & L-systems

**Turtle**: A library for drawing graphics (as if a pen is controlled by a turtle).

**L-system**: A parallel rewriting system and a type of formal grammar, developed originally by a biologist to model the growth of plants.

Example: Axiom: `A`, Rules: `A → AB`, `B → A`

```
n = 0 : A
n = 1 : AB
n = 2 : ABA
n = 3 : ABAAB
```

[👉🏽 Demo: L Trees!](https://replit.com/@PamelaFox2/LTreeDemo)

Further learning: [turtle module](https://docs.python.org/3/library/turtle.html), [Tutorial: Turtles and Strings and L-Systems](https://runestone.academy/runestone/books/published/thinkcspy/Strings/TurtlesandStringsandLSystems.html), [Algorithmic Botany: Graphical Modeling using L-systems](http://paulbourke.net/fractals/lsys/), [L-system examples](http://paulbourke.net/fractals/lsys/)

#### Natural Language Processing

NLP includes language modeling, spelling correction, text classification, sentiment analysis, information retrieval, relation extraction, recommendation systems, translation question answering, word vectors, and more.

[👉🏽 Demo: Sentence trees!](https://replit.com/@PamelaFox2/NLPDemo#main.py)



Further learning: [NLTK Book](http://www.nltk.org/book/ch08.html), [NLTK Sentiment Analysis](https://realpython.com/python-nltk-sentiment-analysis/), [Dan Jurafsky's lectures and books](https://web.stanford.edu/~jurafsky/), Berkeley classes: INFO 159, CS 288

#### Demo: Supervised Machine Learning

![Diagram of supervised ML process](https://upload.wikimedia.org/wikipedia/commons/0/09/Supervised_machine_learning_in_a_nutshell.svg)

[👉🏽 Demo: Bee vs. Wasp?](https://www.kaggle.com/vyombhatia/96-accuracy-with-7-lines-of-code)



Further learning: [FastAI Documentation](https://docs.fast.ai/), [Kaggle ML tutorial](https://www.kaggle.com/learn/intro-to-machine-learning), [Bias in ML](https://www.khanacademy.org/computing/ap-computer-science-principles/data-analysis-101#x2d2f703b37b450a3:machine-learning-and-bias), Berkeley classes: CS182, CS188, CS189

#### What do you want to do?

There are so many possible programs that haven't been made yet. What will you make?

## Recording

Right now is 14th July of 2023,17:00 PM

And I just finished week 1 to 9,excluding all the discussion

Afterwards coming the Scheme, and I'm gonna take a "week 10" break

Since originally the WEEK 10 is just described as `No Lecture: Spring Break`

I started taking this on Tue Jun 27 2023

____

Now is 4th August of 2023, 15:55 PM

Approximately, I have just finished all the labs, homeworks and projects

Well, actually, except the scheme contest, and the scheme interpreter was not fully completed, leaving some optional part

And, all the discussions

Despite the above, this journey of `CS61A` come to its end, and , it tooks me about a month

Next trip will be CS61B ? or SICP?

well, who know where the wind will blow us to?
