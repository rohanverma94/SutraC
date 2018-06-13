# README #

SutraC is compiler for TNNL language. The TNNL stands for The Neural Network Language. This repository has compiler for the TNNL language 

![Sutralogo](misc/logo.jpg)  

### Requirements ###

*  LLVM 6.0 (Build files included in project)
*  Linux 64 bit, preferable CentOS 7 ,64 bit.
*  AMD64 ABI. Can be found [here](https://software.intel.com/sites/default/files/article/402129/mpx-linux64-abi.pdf).


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

### Submitting Bugs ###

* Create a seperate issue for each of the bugs.
