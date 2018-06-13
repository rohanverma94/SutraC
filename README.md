# README #

SutraC is compiler for TNNL language. The TNNL stands for The Neural Network Language. This repository has compiler for the TNNL language 

![Sutralogo](misc/logo.jpg)  

### Requirements ###

*  LLVM 6.0 (Build files included in project)
*  Linux x64 
*  AMD64 ABI


### How to get started? ###

* Setup & Install LLVM 6.0.
* Also setup clang , compiler-rt , dragonegg, libcxx, libcxxabi, libunwind, lld, lldb,openmp & polly.
* C++ 14 enabled compiler (<= g++ 4.8.5).
* Build SutraC as follows:  
```
		$ git clone --recursive https://chakraoverflow@bitbucket.org/tnnc/sutrac.git
		$ mkdir build & cd build  
		$ cmake ..  
		$ make  
		$ make install  
 
```
### Contribution guidelines ###

* Code should be compliant with C++14 standard.
* For unit testing prefer catch2 framework. Can be found [here](https://github.com/catchorg/Catch2) 
* The code with third-party libraries other than LLVM libraries is not accepeted.

### Communications to authors ###

* Rohan Verma :- rohanverma2@acm.org
* Ashwin Vijayakumar