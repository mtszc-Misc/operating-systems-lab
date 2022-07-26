#!/bin/bash

#1
mkdir $2

#2
#tworze $1, zeby moc go skopiowac
mkdir $1
cp -r $1 $2

#3
cd $2

#4
ls -l

#5
tree --du -h

#6
pwd

#7
cd -

#8
rm -r $1 $2
