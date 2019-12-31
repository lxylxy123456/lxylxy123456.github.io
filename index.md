# My GitHub Projects

## Table of Contents
Programs
* [zhalisp](#zhalisp)
* [algorithm](#algorithm)
* [ECS150Demo](#ECS150Demo)
* [ECS160HW4](#ECS160HW4)

Scripts
* [flashplayer-update](#flashplayer-update)
* [turing-machine](#turing-machine)

Websites and APPs
* [shierquan](#shierquan)
* [FGFS-Controller](#FGFS-Controller)
* [LocationTracker](#LocationTracker)
* [hackdavis2019](#hackdavis2019)
* [lxylxy123456.github.io](#lxylxy123456.github.io)

Tutorials and non-programs
* [HCCTalks](#HCCTalks)
* [bresenham-logisim](#bresenham-logisim)
* [ECS175](#ECS175)
* [cs122b](#cs122b)

# Programs
## [zhalisp](https://github.com/lxylxy123456/zhalisp)
A "zha" Clisp implementation

Demo: 
```sh
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
$ make clean all LS=1 > /dev/null
$ ./backend
-> (defun factorial (x cur)
    (if (zerop x) cur (factorial (1- x) (* cur x))))
=> FACTORIAL
-> (factorial 9999 1)     
Error: Stack overflow
-> (exit)
$ make clean all ALL=1 > /dev/null
$ ./backend
-> (defun factorial (x cur)
    (if (zerop x) cur (factorial (1- x) (* cur x))))
=> FACTORIAL
-> (factorial 9999 1)   
=> 2846259680...0000000000
-> 
```

## algorithm
## ECS150Demo
## ECS160HW4
# Scripts
## flashplayer-update
## turing-machine
# Websites and APPs
## shierquan
## FGFS-Controller
## LocationTracker
## hackdavis2019
## lxylxy123456.github.io
# Tutorials and non-programs
## HCCTalks
## bresenham-logisim
## ECS175
## cs122b

