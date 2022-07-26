#!/bin/bash

#8.0.
#input=$1
#out1=$2
#out2=$3
#if [ -r $input ]
#then
# function random_lines() {
#  if [ -e $out1 ]  
#  then
#   > $out1
#  else
#   touch $out1
#  fi
#  if [ -e $out2 ]  
#  then
#   > $out2
#  else
#   touch $out2
#  fi
#  if [ -w $out1 ] && [ -w $out2 ]  
#  then
#   echo masz uprawnienia zapisu
#  else
#   echo nie masz uprawnien zapisu
#   exit -1
#  fi
#  while read line; do
#   zmienna_losowa=$((0 + $RANDOM % 2))
#   if [ $zmienna_losowa -eq 0 ]
#   then
#     echo $line >> $out1
#   else
#    echo $line >> $out2
#   fi
#  done < $input
# }
#else
# echo Nie masz uprawnien odczytu
# exit -1
#fi
#
#random_lines $@
#
#8.1.
#katalog=$1
#lista=$2
#if [ -r $lista ]
#then 
# if [ -d $katalog ] && [ -w $katalog ]
# then
#  dir_and_files () {
#   cd $katalog
#   while read line; do
#    echo $line | xargs mkdir 
#    cd $line
#    for ((i=0;i<=9;i++))
#    do
#     name="F${i}"
#     touch $name
#    done
#    cd ..
#   done < $lista
#  } 
# else
#  echo To nie katalog
#  exit -1
# fi
#else
# echo Nie masz prawa odczytu
# exit -1
#fi
#
#dir_and_files $@
