#!/bin/bash

#6.0.
#zmienna1=$(($1+$2))
#zmienna2=$(($1-$2))
#if [ $zmienna2 -eq 0 ]
#then
# echo Roznica liczb nie moze wynosic 0
# exit -1
#else
# zmienna3=$(($zmienna1/$zmienna2))
# echo "$zmienna3" | bc
#fi



#6.1.
#silnia () {
# if [ $1 -le 1 ]
# then
#  echo 1
# else
#  rek=$(silnia $(( $1 - 1 )))
#  echo $(( $1 * $rek ))
# fi
#}

#if [ $# -gt 1 ]
#then
# echo Liczba podanych argumentow musi wynosic 1
# exit -1
#else
# silnia "$1"
#fi



#6.2.
#if [ $# -gt 1 ]
#then
# echo Liczba podanych argumentow musi wynosic 1
# exit -1
#else
# silnia=1
# for ((i=1;i<=$1;i++))
# do
#  silnia=$(($silnia*$i))
# done
# echo $silnia
#fi



#6.3.
#for i 
#do
# suma=$(expr $suma + $i)
#done
#echo $suma

