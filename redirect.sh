#!/bin/bash


:<<EOF
标准输入文件(stdin) :  stdin的文件描述符为0, Unix程序默认从stdin读取数据。
标准输出文件(stdout):  stdout 的文件描述符为1,Unix程序默认向stdout输出数据。
标准错误文件(stderr):  stderr的文件描述符为2, Unix程序会向stderr流中写入错误信息。
EOF

# 将标准输出流和错误流重定向


ls -alF >> /dev/null 2>&1