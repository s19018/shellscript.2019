sed 1d personal_infomation.csv | cut -d, -f7 | sort | uniq -c
