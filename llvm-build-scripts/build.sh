#!bin/bash
wd=$PWD
echo "Creating Directory 'llvm-prog' in $wd."
mkdir llvm-proj
cd llvm-proj/
git clone --branch="release_60" https://github.com/llvm-mirror/llvm.git
git clone --branch="release_60" https://github.com/llvm-mirror/clang.git
git clone --branch="release_60" https://github.com/llvm-mirror/libcxx.git
git clone --branch="release_60" https://github.com/llvm-mirror/lldb.git
git clone --branch="release_60" https://github.com/llvm-mirror/compiler-rt.git
git clone --branch="release_60" https://github.com/llvm-mirror/lld.git
git clone --branch="release_60" https://github.com/llvm-mirror/clang-tools-extra.git
git clone --branch="release_60" https://github.com/llvm-mirror/polly.git
git clone --branch="release_60" https://github.com/llvm-mirror/libunwind.git
git clone --branch="release_60" https://github.com/llvm-mirror/dragonegg.git
git clone --branch="release_60" https://github.com/llvm-mirror/libcxxabi.git
git clone --branch="release_60" https://github.com/llvm-mirror/openmp.git


