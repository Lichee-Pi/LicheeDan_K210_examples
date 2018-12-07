#!/bin/sh

cd ./build

##here you shoule change for your path
cross_compile=/home/xel/kendryte-toolchain-8.2

cmake .. -DPROJ=$1 -DTOOLCHAIN=$cross_compile"/bin" && make
