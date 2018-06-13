#!bin/bash
wd=$PWD
if [ ! -d $PWD/llvm-project ]; then
    echo "Creating Directory 'llvm-project' in $wd."
    mkdir llvm-project
fi
cd llvm-project/



git clone --branch="release_60" https://github.com/llvm-mirror/llvm.git

if [ $? -eq 0 ]; then
    echo "LLVM sucessfully cloned."
else 
    echo "Try script again"
    exit 1
fi

cd llvm/tools
git clone --branch="release_60" https://github.com/llvm-mirror/clang.git

if [ $? -eq 0 ]; then
    echo "Clang sucessfully cloned."
else 
    echo "Try script again"
    exit 1
fi
git clone --branch="release_60" https://github.com/llvm-mirror/lldb.git

if [ $? -eq 0 ]; then
    echo "lldb sucessfully cloned."
else 
    echo "Try script again"
    exit 1
fi

git clone --branch="release_60" https://github.com/llvm-mirror/lld.git

if [ $? -eq 0 ]; then
    echo "lld sucessfully cloned."
else 
    echo "Try script again"
    exit 1
fi
git clone --branch="release_60" https://github.com/llvm-mirror/polly.git

if [ $? -eq 0 ]; then
    echo "Polly sucessfully cloned."
else 
    echo "Try script again"
    exit 1
fi

cd clang/tools
git clone --branch="release_60" https://github.com/llvm-mirror/clang-tools-extra.git
if [ $? -eq 0 ]; then
    echo "Clang-tools sucessfully cloned."
else 
    echo "Try script again"
    exit 1
fi

cd ../../../projects
git clone --branch="release_60" https://github.com/llvm-mirror/libcxx.git

if [ $? -eq 0 ]; then
    echo "libcxx suucessfully cloned."
else 
    echo "Try script again"
    exit 1
fi



git clone --branch="release_60" https://github.com/llvm-mirror/compiler-rt.git

if [ $? -eq 0 ]; then
    echo "compiler-rt sucessfully cloned."
else 
    echo "Try script again"
    exit 1
fi

git clone --branch="release_60" https://github.com/llvm-mirror/libunwind.git

if [ $? -eq 0 ]; then
    echo "libunwind sucessfully cloned."
else 
    echo "Try script again"
    exit 1
fi

git clone --branch="release_60" https://github.com/llvm-mirror/dragonegg.git

if [ $? -eq 0 ]; then
    echo "dragonegg sucessfully cloned."
else 
    echo "Try script again"
    exit 1
fi

git clone --branch="release_60" https://github.com/llvm-mirror/libcxxabi.git
if [ $? -eq 0 ]; then
    echo "libcxxabi sucessfully cloned."
else 
    echo "Try script again"
    exit 1
fi

git clone --branch="release_60" https://github.com/llvm-mirror/openmp.git

if [ $? -eq 0 ]; then
    echo "openmp sucessfully cloned."
else 
    echo "Try script again"
    exit 1
fi

cd ..
mkdir build && cd build
cmake -G "Unix Makefiles" -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=/usr/local ..
make
sudo make install

if [ $? -eq 0 ]; then
    echo "LLVM & Tools sucessfully installed."
else 
    echo "Try script again"
    exit 1
fi
