#!/bin/bash

__redis() {
mkdir -p /src && cd /src && git clone https://github.com/antirez/redis.git
cd redis && git checkout tags/2.8.4
make && make install
mkdir -p /etc/redis

cp utils/redis_init_script /etc/init.d/redis
chmod 755 /etc/init.d/redis

mkdir -p /etc/redis
mv /redis.conf /etc/redis/6379.conf

mkdir -p /etc/monit.d
# Name so it runs before bigblue
mv /redis.monit /etc/monit.d/00-redis

}

# Run Functions
__redis
