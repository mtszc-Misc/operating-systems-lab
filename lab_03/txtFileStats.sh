#!/bin/bash

#3.0.1
file -i $1
#3.0.2
wc -l $1
#3.0.3
wc -m $1
#3.0.4
du -h $1
#3.0.5
grep $2 $1 | wc -l
#3.0.6
grep -v $2 $1 | wc -l
#3.0.7
cat $1 | head -5 | tail -1

