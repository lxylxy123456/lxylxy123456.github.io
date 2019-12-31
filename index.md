# My GitHub Projects

## Table of Contents
Programs
* [zhalisp](#zhalisp)
* [algorithm](#algorithm)
* [ECS150Demo](#ecs150demo)
* [ECS160HW4](#ecs160hw4)

Scripts
* [flashplayer-update](#flashplayer-update)
* [turing-machine](#turing-machine)

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
# Scripts
## [flashplayer-update](https://github.com/lxylxy123456/flashplayer-update)
## [turing-machine](https://github.com/lxylxy123456/turing-machine)
# Websites and APPs
## [shierquan](https://github.com/lxylxy123456/shierquan)
## [FGFS-Controller](https://github.com/lxylxy123456/FGFS-Controller)
## [LocationTracker](https://github.com/lxylxy123456/LocationTracker)
## [hackdavis2019](https://github.com/lxylxy123456/hackdavis2019)
## [lxylxy123456.github.io](https://github.com/lxylxy123456/lxylxy123456.github.io)
# Tutorials and non-programs
## [HCCTalks](https://github.com/lxylxy123456/HCCTalks)
## [bresenham-logisim](https://github.com/lxylxy123456/bresenham-logisim)
## [ECS175](https://github.com/lxylxy123456/ECS175)
## [cs122b](https://github.com/lxylxy123456/cs122b)

