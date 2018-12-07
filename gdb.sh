#!/bin/sh

##here you shoule change for your path
gdb=/home/xel/kendryte-toolchain-8.2/bin/riscv64-unknown-elf-gdb

$gdb -ex "set remotetimeout 240" -ex "target extended-remote localhost:3333" -ex "monitor reset halt"  -ex "load" $1
