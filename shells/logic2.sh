#!/bin/bash

opt1=$1
opt2=$2

if [ $opt1 == 'test' -a $opt2 == 'aaa' ];then
  echo good
else
  echo bad
fi
