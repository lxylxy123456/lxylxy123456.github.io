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

Two versions, written in C++ (3800 LOC) and Python (1200 LOC). 

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
## [ECS150Demo](https://github.com/lxylxy123456/ECS150Demo)
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

