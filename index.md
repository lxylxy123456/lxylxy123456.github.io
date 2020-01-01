# Lxylxy123456's GitHub Projects

## Table of Contents
Programs
* [zhalisp](#zhalisp)
* [algorithm](#algorithm)
* [ECS150Demo](#ecs150demo)
* [ECS160HW4](#ecs160hw4)

Scripts
* [turing-machine](#turing-machine)
* [flashplayer-update](#flashplayer-update)

Websites and APPs
* [shierquan](#shierquan)
* [FGFS-Controller](#fgfs-controller)
* [LocationTracker](#locationtracker)
* [hackdavis2019](#hackdavis2019)
* [lxylxy123456.github.io](#lxylxy123456.github.io)

Tutorials and non-programs
* [HCCTalks](#hcctalks)
* [bresenham-logisim](#bresenham-logisim)
* [ECS175](#ecs175)
* [cs122b](#cs122b)

# Programs
## [zhalisp](https://github.com/lxylxy123456/zhalisp)
A "zha" Clisp implementation

Two versions, written in C++ (3000 LOC) and Python (1300 LOC). 

Features (C++): garbage collection, tail call optimization, call stack limitation

Demo:

Default options
```
$ cd cpp; make > /dev/null
$ ./backend
-> (+ 1 2 (* 3 4))
=> 15
-> (defun factorial (x cur)
    (if (zerop x) cur (factorial (1- x) (* cur x))))
=> FACTORIAL
-> (factorial 5 1)
=> 120
-> (factorial 9999 1)
Segmentation fault (core dumped)
```
Enable stack limitation (`make LS=1`)
```
-> (defun factorial (x cur)
    (if (zerop x) cur (factorial (1- x) (* cur x))))
=> FACTORIAL
-> (factorial 9999 1)
Error: Stack overflow
-> (exit)
```
Enable tail call optimization (`make TR=1`)
```
-> (defun factorial (x cur)
    (if (zerop x) cur (factorial (1- x) (* cur x))))
=> FACTORIAL
-> (/ (factorial 9999 1) (factorial 9997 1))
=> 99970002
-> (* 9998 9999)
=> 99970002
-> 
```

## [algorithm](https://github.com/lxylxy123456/algorithm)
Personal implementation of some algorithms in "[Introduction to Algorithms](https://mitpress.mit.edu/books/introduction-algorithms-third-edition)", third edition

Written in C++, extensively using templates to support any data type, 12000 LOC

Contains 224 functions (e.g. `LeftRotate`, `RightRotate`, `RBInsert`) from 91 topics (e.g. `RedBlackTree`). 

Demo: Red-Black Tree
```
$ make RedBlackTree
$ ./RedBlackTree
>> i
k = 1
>> i
k = 2
>> i
k = 3
>> p
   2     
  / \    
 1   3   
>> i
k = 4
>> i
k = 5 
>> i
k = 6
>> p
            __ 2 __              
         __/       \__           
       1               4         
                     /   \       
                   3       5     
                            \    
                             6   
>> 
```

## [ECS150Demo](https://github.com/lxylxy123456/ECS150Demo)
Some demo programs related to the operating systems class ([ECS 150](https://www.cs.ucdavis.edu/blog/ecs-150-operating-systems-system-programming/))

* `sync_barrier.py`: synchronization barrier implemented using semaphores

* `page2frame.py`: Translate (virtual) page to (physical) frame using Linux's process information pseudo-filesystem

* `page_table.py`: Draw the page table of a process from `/proc/[pid]/maps`
![page2frame demo](image/page2frame.png)

## [ECS160HW4](https://github.com/lxylxy123456/ECS160HW4)
A (possibly) flawless C program that calculates the top 10 tweeters (by volume of tweets) in a given CSV file of tweets. Submitted for Homework 4 of [ECS 160](https://www.cs.ucdavis.edu/blog/ecs-160-software-engineering/) Fall 2019. 

Contributers: Eric Li, Kevin Rong

```sh
$ cat > a.csv
id,name,content
1,lxylxy123456,I love programming
2,lxylxy123456,I like open source
3,rkevin-arch,I am a contributer of this repo
4,anonymous,blah blah blah
$ ./maxTweeter a.csv
lxylxy123456: 2
rkevin-arch: 1
anonymous: 1
$ 
```

# Scripts
## [turing-machine](https://github.com/lxylxy123456/turing-machine)
Python implementation of DFA and Turing Machine

DFA Demo: test whether the input binary string represents a number divisible by 3

* Specification
```
DFA_3mod = {
	'Sigma': 	(0, 1), 
	'Q': 		('A', 'B', 'C'), 
	'q0':		'A', 
	'F': 		('A',), 
	'delta': 	{
					('A', 0): 'A', 
					('A', 1): 'B', 
					('B', 0): 'C', 
					('B', 1): 'A', 
					('C', 0): 'B', 
					('C', 1): 'C', 
				}, 
}
```
* Plot

![DFA_3mod](image/DFA_3mod.png)
* Execution
```
A B C B A A B C C B A A
 1 0 0 1 0 1 0 1 0 1 0
True
```

Turing Machine Demo: [2th busy beaver](https://en.wikipedia.org/wiki/Busy_beaver#Examples)

* Specification
```
TM_bb2 = {
	'Q': 		('A', 'B', 'H'), 
	'Gamma': 	(0, 1), 
	'b': 		0, 
	'Sigma': 	(1, ), 
	'q0':		'A', 
	'F': 		('H'), 
	'R': 		(), 
	'delta': 	{
					('A', 0): ('B', 1, R), 
					('A', 1): ('B', 1, L), 
					('B', 0): ('A', 1, L), 
					('B', 1): ('H', 1, R), 
				}, 
}
TT_bb2 = (0, )
```
* Plot

![TM_bb2](image/TM_bb2.png)
* Execution
```
A	 0 0(0)0 0 
B	 0 0 1(0)0 
A	 0 0(1)1 0 
B	 0(0)1 1 0 
A	(0)1 1 1 0 
B	 1(1)1 1 0 
H	 1 1(1)1 0 
True	6	 1 1(1)1 
```

## [flashplayer-update](https://github.com/lxylxy123456/flashplayer-update)
Automatically Install the Flash plugin for Mozilla Firefox on Linux

```
$ ls /usr/lib64/mozilla/plugins/libflashplayer.so
ls: cannot access '/usr/lib64/mozilla/plugins/libflashplayer.so': No such file or directory
$ sudo python3 flashplayer.py
Installed
Updated version record
$ ls /usr/lib64/mozilla/plugins/libflashplayer.so
/usr/lib64/mozilla/plugins/libflashplayer.so
$ sudo python3 flashplayer.py
Installed version is latest
$ 
```

# Websites and APPs
## [shierquan](https://github.com/lxylxy123456/shierquan)
An easy event publication & management platform

Visit:
[中文](https://zh.shierquan.tk/) / 
[English](https://en.shierquan.tk/) / 
[日本語](https://ja.shierquan.tk/) (static texts only)

[Django](https://www.djangoproject.com/) + 
[BootStrap](https://getbootstrap.com/) + 
[PostgreSQL](https://www.postgresql.org) + 
[Apache](https://httpd.apache.org/)

Major contributers: lxylxy123456, David Ma

Chinese home page:

![zh-home](image/shierquan01.png)

Chinese club info page:

![zh-hcc](image/shierquan02.png)

English home page:

![en-home](image/shierquan03.png)

Japanese home page:

![ja-home](image/shierquan04.png)

## [FGFS-Controller](https://github.com/lxylxy123456/FGFS-Controller)
This section is under construction ... be patient

## [LocationTracker](https://github.com/lxylxy123456/LocationTracker)
This section is under construction ... be patient

## [hackdavis2019](https://github.com/lxylxy123456/hackdavis2019)
Hack Davis 2019 project

Authors: lxylxy123456, Yiling Chen, jingyizhu, wyr

[http://savemyschedule.tk/](http://savemyschedule.tk/)

![hackdavis2019](image/hackdavis2019)

## [lxylxy123456.github.io](https://github.com/lxylxy123456/lxylxy123456.github.io)
My homepage (this website)

# Tutorials and non-programs
## [HCCTalks](https://github.com/lxylxy123456/HCCTalks)
Some programming related tutorials in Chinese

Screenshot:

![HCCTalks.png](image/HCCTalks.png)

(from PythonTalk{[02](https://github.com/lxylxy123456/HCCTalks/blob/make/43/PythonTalk02.pdf),[11](https://github.com/lxylxy123456/HCCTalks/blob/make/43/PythonTalk11.pdf)}, BashTalk[02](https://github.com/lxylxy123456/HCCTalks/blob/make/43/BashTalk02.pdf), RegExpTalk[01](https://github.com/lxylxy123456/HCCTalks/blob/make/43/RegExpTalk01.pdf))

## [bresenham-logisim](https://github.com/lxylxy123456/bresenham-logisim)
Implementation of Bresenham's line algorithm using logisim (logic circuit)

GIF demo [here](https://github.com/lxylxy123456/bresenham-logisim#demo).

![bresenham-logisim.png](image/bresenham-logisim.png)

## [ECS175](https://github.com/lxylxy123456/ECS175)
[Computer Graphics class](https://www.cs.ucdavis.edu/blog/ecs-175-computer-graphics/) homework demo

Complete list of demos [here](https://github.com/lxylxy123456/ECS175#demos)

Phong lighting & Ray tracing demo:

![ECS175P5.png](image/ECS175P5.png)

(The green sphere is expected to be only visible in the lower-right screen)

Bezier & B-spline curve demo:

![ECS175P4.png](image/ECS175P4.png)

## [cs122b](https://github.com/lxylxy123456/cs122b)
A randomized algorithm analysis related to [ECS 122B](https://www.cs.ucdavis.edu/blog/ecs-122b-algorithm-design-analysis/), written in LaTeX

Screenshot:

![cs122b.png](image/cs122b.png)

