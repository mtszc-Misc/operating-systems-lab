#!/bin/bash

#2.1
mkdir $1

#2.2
cd $1
mkdir D1 D2 D3 D4
touch D2/F1.txt D3/F1.txt D4/F1.txt

#2.3
cd D1
ln -s /etc/passwd dow_symb

#2.4
readlink -f dow_symb

#2.5
cd ../D2
ln ../D3/F1.txt F2.txt

#2.6
chmod 700 F2.txt

#2.7
sudo chown :users F2.txt

#2.8
cd ..
sudo chgrp users D3

#2.9
chmod -x D3

#2.10
chmod -w D2

#2.11
chmod -r D4

#2.12
chmod +t D4

#2.13
cd D1
touch scr1.sh
chmod 110 scr1.sh

#2.14
chmod g+s scr1.sh
chmod u+s scr1.sh
