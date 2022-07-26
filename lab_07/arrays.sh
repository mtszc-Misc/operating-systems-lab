#!/bin/bash

#7.0.
#ilosc=$#
#input_array=( "$@" ) 
#for ((i = 0; i<ilosc; i++)) 
#do
# for((j = 0; j<ilosc-i-1; j++)) 
# do
#  if [ ${input_array[j]} -gt ${input_array[$((j+1))]} ] 
#  then
#   temp=${input_array[j]} 
#   input_array[$j]=${input_array[$((j+1))]}   
#   input_array[$((j+1))]=$temp 
#  fi
# done
#done
#echo ${input_array[*]} 

#7.1.
#if [ $1 -le 0 ] || [ $2 -le 0 ]
#then
# echo Argumenty musza byc dodatnie
# exit -1
#else
# declare -A macierz
# num_rows=$1
# num_columns=$2
# for ((i=1;i<=num_rows;i++))
# do
#  for ((j=1;j<=num_columns;j++))
#  do
#   macierz[$i,$j]=$(($i*$j))
#  done
# done
# f1="%$((${#num_rows}+1))s"
# f2=" %9s"
# printf "$f1" ''
# for ((i=1;i<=num_rows;i++))
# do
#  printf "$f2" $i
# done
# echo
# for ((j=1;j<=num_columns;j++))
# do
#  printf "$f1" $j
#  for ((i=1;i<=num_rows;i++))
#  do
#   printf "$f2" ${macierz[$i,$j]}
#  done
#  echo
# done
#fi
#54
#7.2. Wynik podaje dobry, ale printuje command not found po drodze (przez linijkę, która zwiększa high przed końcem pętli)
#integral () {
# input_array=( "$@" )
# declare -a wszystkie_pola
# ilosc=$#
# high=0
# for ((i=0;i<ilosc-1;i++))
# do
#  add_square=$((input_array[$i]+input_array[$((i+1))]))
#  add_triangle=$((add_square/2))
#  pole=$(($high+$add_triangle))
#  wszystkie_pola+=($pole)
#  high=$(input_array[$((i+1))])
# done
# calka=$(IFS=+; echo "$((${wszystkie_pola[*]}))")
# echo "$calka"
#}
#
#integral $@




















