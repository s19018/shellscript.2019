sed 1d personal_infomation.csv | cut -d, -f4 | sort | uniq -c
