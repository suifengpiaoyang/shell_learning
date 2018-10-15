
func(){
    # 函数参数学习
    if [ $# != 0 ]
    then
        echo "一共输入 $# 个参数。"
    fi
}

func 1 2 3 4

