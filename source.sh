#!/bin/bash


# 将当前执行/etc/profile加入当前shell执行
source /etc/profile


# 单独启动一个子进程shell去执行，对变量的修改不会影响当前登陆shell
sh /etc/profile



# 在shell脚本中包含其他脚本

source xxx.sh
# 或者
. xxx.sh