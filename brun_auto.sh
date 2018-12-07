#!/bin/sh

if [ ! -n "$1" ] ;then
    echo "you have to select a Bin File!"
    exit
fi

K210_BIN_PATH=`pwd`/build

##here you shoule change for your path
BRUN_SCRIPT_PATH=/home/xel/K210/pyScript

bin_file=$K210_BIN_PATH"/"$1".bin"

echo $bin_file

cd $BRUN_SCRIPT_PATH

if [ ! -n "$2" ] ;then
	python3 kflash.py -b 1000000 $bin_file -d /dev/ttyUSB0
else
	python3 kflash.py -b 1000000 $bin_file -d $2
fi

