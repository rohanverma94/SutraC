#!bin/bash
wd=$PWD
if [ ! -d $PWD/llvm-project ]; then
    echo "Creating Directory 'llvm-project' in $wd."
    mkdir llvm-project
fi
cd llvm-project/


if [ ! -d $PWD/llvm ]; then
    git clone --branch="release_60" https://github.com/llvm-mirror/llvm.git

    if [ $? -eq 0 ]; then
        echo "LLVM sucessfully cloned."
    else 
        echo "Try script again"
        exit 1
    fi
fi

cd llvm/tools

if [ ! -d $PWD/clang ]; then
    git clone --branch="release_60" https://github.com/llvm-mirror/clang.git

    if [ $? -eq 0 ]; then
        echo "Clang sucessfully cloned."
    else 
        echo "Try script again"
        exit 1
    fi
fi

if [ ! -d $PWD/lldb ]; then    
    git clone --branch="release_60" https://github.com/llvm-mirror/lldb.git

    if [ $? -eq 0 ]; then
        echo "lldb sucessfully cloned."
    else 
        echo "Try script again"
        exit 1
    fi
fi

if [ ! -d $PWD/lld ]; then
    git clone --branch="release_60" https://github.com/llvm-mirror/lld.git

    if [ $? -eq 0 ]; then
        echo "lld sucessfully cloned."
    else 
        echo "Try script again"
        exit 1
    fi
fi

if [ ! -d $PWD/polly ]; then
    git clone --branch="release_60" https://github.com/llvm-mirror/polly.git

    if [ $? -eq 0 ]; then
        echo "Polly sucessfully cloned."
    else 
        echo "Try script again"
        exit 1
    fi
fi

cd clang/tools

if [ ! -d $PWD/clang-tools-extra ]; then
    git clone --branch="release_60" https://github.com/llvm-mirror/clang-tools-extra.git
    if [ $? -eq 0 ]; then
        echo "Clang-tools sucessfully cloned."
    else 
        echo "Try script again"
        exit 1
    fi
fi

cd ../../../projects

if [ ! -d $PWD/libcxx ]; then
    git clone --branch="release_60" https://github.com/llvm-mirror/libcxx.git

    if [ $? -eq 0 ]; then
        echo "libcxx sucessfully cloned."
    else 
        echo "Try script again"
        exit 1
    fi
fi


if [ ! -d $PWD/compiler-rt ]; then
    git clone --branch="release_60" https://github.com/llvm-mirror/compiler-rt.git

    if [ $? -eq 0 ]; then
        echo "compiler-rt sucessfully cloned."
    else 
        echo "Try script again"
        exit 1
    fi
fi

if [ ! -d $PWD/libunwind ]; then
    git clone --branch="release_60" https://github.com/llvm-mirror/libunwind.git

    if [ $? -eq 0 ]; then
        echo "libunwind sucessfully cloned."
    else 
        echo "Try script again"
        exit 1
    fi
fi

if [ ! -d $PWD/dragonegg ]; then
    git clone https://github.com/llvm-mirror/dragonegg.git

    if [ $? -eq 0 ]; then
        echo "dragonegg sucessfully cloned."
    else 
        echo "Try script again"
        exit 1
    fi
fi

if [ ! -d $PWD/libcxxabi ]; then
    git clone --branch="release_60" https://github.com/llvm-mirror/libcxxabi.git
    if [ $? -eq 0 ]; then
        echo "libcxxabi sucessfully cloned."
    else 
        echo "Try script again"
        exit 1
    fi
fi


if [ ! -d $PWD/openmp ]; then
    git clone --branch="release_60" https://github.com/llvm-mirror/openmp.git

    if [ $? -eq 0 ]; then
        echo "openmp sucessfully cloned."
    else 
        echo "Try script again"
        exit 1
    fi
fi

cd ..
if [ ! -d $PWD/build ]; then
    mkdir build 
    echo "Creating build directory for LLVM."
fi

cd build
cmake -G "Unix Makefiles" -DCMAKE_EXPORT_COMPILE_COMMANDS=On \
-DBUILD_SHARED_LIBS=On \
-DLLVM_ENABLE_LIBCXX=On \
-DLLVM_ENABLE_LIBCXXABI=On \
-DLLVM_ENABLE_ASSERTIONS=On \
-DLLVM_ENABLE_SPHINX=Off \
-DLLVM_ENABLE_THREADS=On \
-DLLVM_INSTALL_UTILS=On \
-DLIBCXX_ENABLE_EXCEPTIONS=On \
-DLIBCXX_ENABLE_RTTI=On \
-DCMAKE_POLICY_DEFAULT_CMP0056=NEW \
-DCMAKE_POLICY_DEFAULT_CMP0058=NEW -DLLDB_DISABLE_PYTHON=1 -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=/usr/local ..

make -j ${CPUS} ${VERBOSE}
sudo make install

if [ $? -eq 0 ]; then
    echo "LLVM & Tools sucessfully installed."
else 
    echo "Try script again"
    exit 1
fi
