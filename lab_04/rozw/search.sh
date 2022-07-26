#!/bin/bash

#4.1
mkdir $2
#4.2
find $1 -type f -name "*.txt"
#4.3
find $1 -type l
#4.4
find $1 -type f -name "*.sh" -perm /a=x
#4.5
find $1 -type d -name "[AaDd]*" 
#4.6
find $1 -type f -user user -empty
#4.7
find $1 -group user -size +1M
#4.8
find $1 -mmin -60
#4.9
find $1 -type d -perm -1000
#4.10
find $1 -type f \( -perm /u=s -o -perm /g=s \)
#4.11
find /dev/ \( -type b -o -type c \)
#4.12
find $1 -type d -empty -exec rmdir {} \;
#4.13
find $1 -type f -size +10M -exec mv {} $2 \;
#4.14
find $1 -type d -name "Z*" -exec cp -r {} $2 \;
