#!/bin/bash

if [ $# -eq 3 ];then
while [ -n $2 ];do
  case $2 in
    +) echo "$1 + $3 = `expr $1 + $3`"
    break;;
    -) echo "$1 - $3 = `expr $1 - $3`"
    break;;
    x) echo "$1 x $3 = `expr $1 \* $3`"
    break;;
    /) echo "$1 / $3 = `expr $1 / $3`"
    break;;
    *) echo "second prameter is only '+ = X /'"
    break;;
  esac
done

else
  echo "This program require theree paramters.."
fi
