#!/bin/bash

#3.1.1
mkdir $1
#3.1.2
cat /etc/passwd | grep `whoami`
#3.1.3
cd $1
touch F1.csv
cat /etc/passwd | cut -d: -f 1,6,7 | sort -r > F1.csv
#3.1.4
touch F2.csv
cat /etc/passwd | cut -d: -f7 | rev | sort | rev | uniq > F2.csv
#3.1.5
touch F3.txt
cat /etc/passwd | cut -d: -f1 | tr “[a-z]” “[A-Z]” > F3.txt
#3.1.6
touch F4.txt
cat F3.txt | grep -i -C4 `whoami` > F4.txt 
#3.1.7
diff -y /etc/passwd F4.txt > differences.txt
