#!/bin/bash

__bigblue() {
apt-get -y install sudo
apt-get -y install -f 

apt-get -y install bigbluebutton

## These are just demos, remove in production
apt-get -y install bbb-demo

#bbb-conf --clean
#bbb-conf --check

}

__finish() {
echo "FINISHED BIGBLUE "
#rm /etc/nginx/sites-enabled/default
}

__bigblue
__finish
