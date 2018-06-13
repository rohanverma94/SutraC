#!bin/bash
wd=$PWD
if [ ! -d $PWD/llvm-project ]; then
    echo "Creating Directory 'llvm-project' in $wd."
    mkdir llvm-project
fi
cd llvm-project/

git clone --branch="release_60" https://github.com/llvm-mirror/llvm.git

if [ $? -eq 0 ]; then
    echo "LLVM sucessfully installed."
else 
    echo "Try script again"
    exit 1
fi

git clone --branch="release_60" https://github.com/llvm-mirror/clang.git

if [ $? -eq 0 ]; then
    echo "Clang sucessfully installed."
else 
    echo "Try script again"
    exit 1
fi

git clone --branch="release_60" https://github.com/llvm-mirror/libcxx.git

if [ $? -eq 0 ]; then
    echo "libcxx suucessfully cloned."
else 
    echo "Try script installed"
    exit 1
fi

git clone --branch="release_60" https://github.com/llvm-mirror/lldb.git

if [ $? -eq 0 ]; then
    echo "lldb sucessfully installed."
else 
    echo "Try script again"
    exit 1
fi

git clone --branch="release_60" https://github.com/llvm-mirror/compiler-rt.git

if [ $? -eq 0 ]; then
    echo "compiler-rt sucessfully installed."
else 
    echo "Try script again"
    exit 1
fi

git clone --branch="release_60" https://github.com/llvm-mirror/lld.git

if [ $? -eq 0 ]; then
    echo "lld sucessfully installed."
else 
    echo "Try script again"
    exit 1
fi

git clone --branch="release_60" https://github.com/llvm-mirror/polly.git
if [ $? -eq 0 ]; then
    echo "Polly sucessfully installed."
else 
    echo "Try script again"
    exit 1
fi

git clone --branch="release_60" https://github.com/llvm-mirror/libunwind.git

if [ $? -eq 0 ]; then
    echo "libunwind sucessfully installed."
else 
    echo "Try script again"
    exit 1
fi

git clone --branch="release_60" https://github.com/llvm-mirror/dragonegg.git

if [ $? -eq 0 ]; then
    echo "dragonegg sucessfully installed."
else 
    echo "Try script again"
    exit 1
fi

git clone --branch="release_60" https://github.com/llvm-mirror/libcxxabi.git
if [ $? -eq 0 ]; then
    echo "libcxxabi sucessfully installed."
else 
    echo "Try script again"
    exit 1
fi

git clone --branch="release_60" https://github.com/llvm-mirror/openmp.git

if [ $? -eq 0 ]; then
    echo "openmp sucessfully installed."
else 
    echo "Try script again"
    exit 1
fi

cd llvm/
mkdir build && cd build
cmake ..
make
sudo make install

if [ $? -eq 0 ]; then
    echo "openmp sucessfully installed."
else 
    echo "Try script again"
    exit 1
fi

cd clang/
mkdir build && cd build
cmake ..
make
sudo make install

if [ $? -eq 0 ]; then
    echo "clang sucessfully installed."
else 
    echo "Try script again"
    exit 1
fi

cd lld/
mkdir build && cd build
cmake ..
make
sudo make install

if [ $? -eq 0 ]; then
    echo "lld sucessfully installed."
else 
    echo "Try script again"
    exit 1
fi

cd lldb/
mkdir build && cd build
cmake ..
make
sudo make install

if [ $? -eq 0 ]; then
    echo "lldb sucessfully installed."
else 
    echo "Try script again"
    exit 1
fi

cd libunwind/
mkdir build && cd build
cmake ..
make
sudo make install

if [ $? -eq 0 ]; then
    echo "libunwind sucessfully installed."
else 
    echo "Try script again"
    exit 1
fi

cd openmp/
mkdir build && cd build
cmake ..
make
sudo make install

if [ $? -eq 0 ]; then
    echo "openmp sucessfully installed."
else 
    echo "Try script again"
    exit 1
fi

cd polly/
mkdir build && cd build
cmake ..
make
sudo make install

if [ $? -eq 0 ]; then
    echo "polly sucessfully installed."
else 
    echo "Try script again"
    exit 1
fi


cd libcxx/
mkdir build && cd build
cmake ..
make
sudo make install

if [ $? -eq 0 ]; then
    echo "libcxx sucessfully installed."
else 
    echo "Try script again"
    exit 1
fi

cd libcxxabi/
mkdir build && cd build
cmake ..
make
sudo make install

if [ $? -eq 0 ]; then
    echo "libcxxabi sucessfully installed."
else 
    echo "Try script again"
    exit 1
fi

cd compiler-rt/
mkdir build && cd build
cmake ..
make
sudo make install

if [ $? -eq 0 ]; then
    echo "compiler-rt sucessfully installed."
else 
    echo "Try script again"
    exit 1
fi

cd dragonegg/
mkdir build && cd build
cmake ..
make
sudo make install

if [ $? -eq 0 ]; then
    echo "dragonegg sucessfully installed."
else 
    echo "Try script again"
    exit 1
fi
