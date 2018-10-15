#!/bin/bash

func1(){
    echo "执行函数1"
}

func2(){
    echo "执行函数2"
}

case_choose(){
    echo "请输入数字（3为退出程序）"
    read num
    case ${num} in
        1)func1 
        ;;
        2)func2
        ;;
        3)break 
        ;;
    esac
}

while true
do
    case_choose
done

