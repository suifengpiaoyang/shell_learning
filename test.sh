#!/bin/bash
echo "Hello World!"
person_name="柳梦璃"
echo ${person_name}
for line in `ls /root`;do
    echo ${line}
done
test="我喜欢"
echo ${test}${person_name}
echo ${#person_name}
# 数组之间的间隔是用空格隔开的，这个和别的语言很不一样！
array_test=("柳梦璃" "韩菱纱" "Yuna")
echo "I like " ${array_test[1]}
for line in ${array_test[*]};do
    echo ${line}
done
# 输出数组的元素个数
echo "array_test数组共有 "${#array_test[*]}" 个参数。"
# 显示不换行
for line in ${array_test[*]};do
    echo -e $line" \c"
done
echo ""
# 显示执行结果（例子：显示日期）
echo `date`


