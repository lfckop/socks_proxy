#!/bin/bash

netstat -anp | grep 10888 | awk '{print $5}' | awk -F: '{print $1}' | sort -r | uniq -c | grep -v "0.0.0.0" > tmp1

while read line
do
    echo -n "$line  "
    ip=$(echo -n $line | awk '{print $2}')
    curl -s http://ip.cn/index.php?ip=${ip} | grep 来自 | awk -F： '{print $3}'
done < tmp1

rm -f tmp1 >&/dev/null
