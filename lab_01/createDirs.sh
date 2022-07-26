#!/bin/bash

#1
mkdir $1

#2
cd $1

#3
mkdir d1 d2 d3 Aa Bb Cc d1/d1.1 d2/d2.1 d3/d3.1 d3/d3.2
touch d1/t1.txt d2/d2.1/f1.csv d3/d3.2/f2.csv

#4
mv d1/t1.txt d1/d1.1

#5
cp d2/d2.1/f1.csv d1

#6
mv Aa Aa1

#7
ls -d *[12]

#8
du --max-depth=1
