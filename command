ssh -f -n -N -D 0.0.0.0:10888 localhost >& $(pwd)/socks_proxy.log </dev/null 

ng 1080 | awk '{print $5}' | awk -F: '{print $1}' | sort -r | uniq -c 

curl http://ip.cn/index.php?ip=124.128.56.224 | grep 来自 | awk -F： '{print $3}'
