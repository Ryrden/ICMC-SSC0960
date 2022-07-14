#!/bin/bash

hs=$1
dir=$2

for i in $(ls $dir/*.in) ; do
	o=${i%.*}.out
	diff -c -b <(runhaskell $hs < $i) $o
done
