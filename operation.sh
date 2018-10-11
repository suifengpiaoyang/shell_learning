#!/bin/bash

a=10
b=20
echo `expr ${a} + ${b}`
echo `expr ${a} - ${b}`
echo `expr ${a} \* ${b}`
echo `expr ${b} / ${a}`
if [ $a == $b ]
then
    echo "True"
elif [ $a != $b ]
then 
    echo "False"
fi
file="test.sh"
if [ -e $file ]
then
    echo "文件存在"
else
    echo "文件不存在"
fi

