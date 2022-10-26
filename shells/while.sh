#!/bin/bash

a=1
while [ $a != 0 ]; do
  echo -n "Input : "
  read a
  if [ $a != 0 ]; then
  if [ $a -gt 9 -o $a -lt 2 ];then
  echo "This program is require number 2-9"

else
    for ((k=1;k<=9;k++))do
      echo "$a * $k = `expr $a \* $k`"
    done
  fi
fi
done
  echo EXIT~!!
