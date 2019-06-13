#!/bin/bash

# $1, $2, ... => 第１引数、第２引数、...
# $@ => 引数全体が取得
# $# => 引数の数

for target in $@
do
    # targetがディレクトリかチェック
    if [ ! -d $target ]; then
        echo "${target}はディレクトリではありません"
        exit 1
    fi

    # target下のファイル数、ディレクトリ数を表示
    echo "${target}:"
    file=$(sudo find "$target" -type f | wc -l)
    echo "  ファイル数: ${file}"
    dir=$(sudo find "$target" -type d | wc -l)
    echo "  ディレクトリ数: ${dir}"
done

exit 0
