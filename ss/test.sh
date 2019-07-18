#!/bin/bash

X="/bin/cat"

if [ "$X" -lt "0" ] # less than
then
	echo "X は0より小さい"
fi
if [ "$X" -gt "0" ]; then # greater than
	echo "X は0より大きい"
fi
[ "$X" -le "0" ] && \
	echo "X は0以下"
[ "$X" -le "0" ] || \
	echo "X は0以下ではない"
[ "$X" -ge "0" ] && \
	echo "X は0以上"
[ "$X" = "0" ] && \
	echo "X は文字列または数値の \"0\""
[ "$X" = "hello" ] && \
	echo "X は文字列 \"hello\""
[ -n "$X" ] && \
	echo "X は1文字以上の文字列"
[ -f "$X" ] && \
	echo "X が存在するファイルのパス"
[ -x "$X" ] && \
	echo "X が実行ファイルのパス"
[ "$X" -nt "/etc/passwd" ] && \
	echo "X の更新日時は/etc/passwdより新しい"