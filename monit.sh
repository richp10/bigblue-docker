#!/bin/bash

__monit() {
# Need later version than yum
mkdir -p /src && cd /src
wget http://mmonit.com/monit/dist/monit-5.6.tar.gz
tar -xf monit* && cd monit*
./configure --enable-optimized --without-ssl --without-pam
make && make install

# just to be sure we control this in same way as on centos..
rm /etc/monitrc

echo "set daemon 10" >> /etc/monit.conf
echo "include /etc/monit.d/*" >> /etc/monit.conf
chmod 700 /etc/monit.conf
}

__monit
