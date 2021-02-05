#!/bin/sh

# PICO_SDK_PATH=/home/USER/Dev/PiPico/pico-sdk

# target: clean
if [ $# = 1 ]; then
    if [ $1 = 'clean' ]; then
	rm -rf ./build
	exit 0
    fi
fi


# cmake
if [ ! -d build ]; then
    mkdir build
fi
cd build
if [ ! -d Makefile ]; then
#    cmake ../ -DCMAKE_C_COMPILER_LAUNCHER=ccache
    cmake ../
fi

make -j4
