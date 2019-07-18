#!/bin/bash

echo "引数が${#}個指定されました"
for i in $@
do
	echo $i
done
echo "私の名前は${0}です"
echo "最初の引数は${1}です"
echo "２番目の引数は${2}です"
echo "すべての引数は${@}です"