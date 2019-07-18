#!/bin/sh

#for i in 1 2 3 4 5
#for i in hello 1 * 2 goodby
#for file in $(find /var/log -type f)
# Cドライブのファイル容量の大きいベスト５を表示
#for file in $(find /mnt/c 2>/dev/null -type f)
#do
	#echo "Looping ... number $i"
	#echo "Looping ... i is set to $i"
#	du $file 2>/dev/null
#done \
#| sort -nr | head -n 5

ls -lR /mnt/c 2>/dev/null | \
awk '{print $9, $5}' | \
sort -nr -k 2 | \
head -n 5