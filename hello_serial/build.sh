#!/bin/sh

# PICO_SDK_PATH=/home/USER/Dev/PiPico/pico-sdk
with_debug_info=""
if [ $# = 1 ]; then
    if [ $1 = 'clean' ]; then
        # target: clean
        rm -rf ./build
        exit 0
    elif [ $1 = "debug" ]; then
        # with debug info
        with_debug_info="-DCMAKE_BUILD_TYPE=Debug"
    fi
fi


# cmake
if [ ! -d build ]; then
    mkdir build
fi
cd build
if [ ! -d Makefile ]; then
#    cmake ../ -DCMAKE_C_COMPILER_LAUNCHER=ccache
    cmake "$with_debug_info" ../
fi

make -j4
