#/bin/bash


for item in {1..10}; do
	echo "split [;]  $item";
done


for item in {1..10}
do
	echo "split [\\n] $item"
done

# 命令顺序执行
ls -alF /text;ls -alF .

# 前一条命令失败才执行
ls -alF /text || (echo "command is faild";exit 1)

# 前一条命令成功才执行

ls -alF . && (echo "command is success")
