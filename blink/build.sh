#!/bin/sh

# PICO_SDK_PATH=/home/USER/Dev/PiPico/pico-sdk

is_debug=""
if [ $# = 1 ]; then
    if [ $1 = 'clean' ]; then
        rm -rf ./build
        exit 0
    elif [ $1 = "debug" ]; then
        is_debug="-DCMAKE_BUILD_TYPE=Debug"
    fi
fi

# cmake
if [ ! -d build ]; then
    mkdir build
fi
cd build
if [ ! -d Makefile ]; then
#    cmake ../ -DCMAKE_C_COMPILER_LAUNCHER=ccache
    cmake  "$is_debug" ../
fi

make -j4
