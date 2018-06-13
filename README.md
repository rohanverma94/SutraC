# README #

SutraC is compiler for TNNL language. The TNNL stands for The Neural Network Language. This repository is compiler for thte TNNL language 

![Sutralogo](misc/logo.jpg)  

### Requirements ###

*  LLVM 6.0 (Build files included in projeet)
*  Linux x64 
*  AMD64 ABI


### How to get started? ###

* Setup & Install LLVM 6.0
* Also setup clang , clang-tools-extra, compiler-rt , dragonegg, libcxx, libcxxabi, libunwind, lld, lldb,openmp & polly
* C++ 14 enabled compiler (GCC g++)
* Build it as follows:  

		$ mkdir build & cd build  
		$ cmake ..  
		$ make  
		$ make install  
 

### Contribution guidelines ###

* For unit testing prefer catch framework
* The code with third-party libraries other than LLVM libraries is not accepeted

### Communications to authors ###

* Rohan Verma :- rohanverma2@acm.org
* Ashwin Vijayakumar