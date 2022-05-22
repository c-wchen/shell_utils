#!/bin/bash


# $?接受上或命令一函数返回值

func_test() {
    if [ $1 -eq 10 ]; then
        echo "return success"
        # 只能返回整数，相当于状态码，否则numeric argument required
        return 0
    else
        echo "return faild"
        return 1
    fi
}


func_test $1

echo "prev command return val ($?)"