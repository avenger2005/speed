#!/bin/bash

# apt -y install unzip

# install besttrace
if [ ! -f "besttrace" ]; then
	wget https://github.com/avenger2005/speed/raw/main/besttrace
	unzip besttrace4linux.zip -d besttrace
	chmod +x besttrace
fi

## start to use besttrace

next() {
    printf "%-70s\n" "-" | sed 's/\s/-/g'
}

clear
next

ip_list=(211.136.192.6 14.215.116.1 101.95.120.109 117.28.254.129 113.207.25.138 119.6.6.6 120.204.197.126 183.221.253.100 202.112.14.151)
ip_addr=(广州移动 广州电信 上海电信 厦门电信CN2 重庆联通 成都联通 上海移动 成都移动 成都教育网)
# ip_len=${#ip_list[@]}

for i in {0..7}
do
	echo ${ip_addr[$i]}
	./besttrace -q 1 ${ip_list[$i]}
	next
done
