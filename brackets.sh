#!/bin/bash

#https://www.runoob.com/w3cnote/linux-shell-brackets-features.html

# 括号使用
# [] () (()) [[]] $() {} {{}}


# () 命令组，多个命令通过;进行分割

(echo "command 1"; echo "command 2") && (echo "command 3"; echo "command 4") 

# ((expr)), expr非零返回状态码0，expr为0返回状态码1
i=9
if (($i > 10)); then
    echo "return code 1"
else
    echo "return code 0"
fi

if $(ls -al . > /dev/null); then
    echo "command is success"
else
    echo "command is faild"
fi

# [] 等同于test命令, ==和!=只能用于字符串比较

# [ -e /usr/bin ] == test -e /usr/bin


# [[]] 对[]的扩展，能够执行多条逻辑语句，比如[[ $a != 1 && $a != 2 ]]



