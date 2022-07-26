#!/bin/bash

#9.0.
declare -A slowa
function fileStats() {
 if [ -e $1 ] && [ -r $1 ]
 then
  echo pierwszy plik istnieje i masz prawo odczytu lecimy dalej
  if [ -e $2 ]
  then
   echo drugi plik istnieje ...
   if [ -w $2 ]
   then
    echo ... i masz prawo zapisu
    for slowo in $(grep -P -o '\b\w+\b' $1)
    do
     let slowa[$slowo]++
    done
   for slowo in ${!slowa[@]}
   do
    printf "%-24s%s\n" $slowo ${slowa[$slowo]}
   done | sort -rn -k2 >> $2
   else
    echo nie masz prawa zapisu do drugiego pliku
    exit -1
   fi
  else
   echo drugi plik nie istnieje...
   if touch $2
   then
    touch $2
    echo ...ale juz istnieje
    if [ -w $2 ]
    then
     echo ... i masz prawo zapisu
    for slowo in $(grep -P -o '\b\w+\b' $1)
    do
     let slowa[$slowo]++
    done
    for slowo in ${!slowa[@]}
    do
     printf "%-24s%s\n" $slowo ${slowa[$slowo]}
    done | sort -rn -k2 >> $2
    else
     echo nie masz prawa zapisu do drugiego pliku
     exit -1
    fi
   else
     echo nie mozna utworzyc pliku
     exit -1
   fi
  fi
 else
  echo pierwszy plik nie istnieje lub nie masz uprawnien do jego odczytu
  exit -1
 fi
}

fileStats $1 $2
