#!/bin/bash

# firewall setting

open_firewall_port(){
    echo ""
    echo "请输入要开启的端口号："
    read open_port
    firewall-cmd --add-port=${open_port}/tcp
}

list_firewall_ports(){
    echo ""
    echo "当前已开启的端口为："
    firewall-cmd --zone=public --list-ports
}

close_firewall_port(){
    echo ""
    echo "请输入要关闭的端口号："
    read close_port
    firewall-cmd --remove-port=${close_port}/tcp
}

firewall_setting(){
    echo "------------------------------------"
    echo "端口设置：1 开启端口；2 关闭端口；3 列出当前开启端口；0 退出脚本"
    echo ""
    echo "请输入数字:"
    read num

    case ${num} in

        1) open_firewall_port
        ;;
        2) close_firewall_port
        ;;
        3) list_firewall_ports
        ;;
        0) break
        ;;
        *) echo "您的输入有误，请输入数字："
        ;;
    esac
}

while true
do
    firewall_setting
done

