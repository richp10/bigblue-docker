#!/bin/bash

__prep() {

# Add the BigBlueButton repository URL and ensure the multiverse is enabled
echo "deb http://ubuntu.bigbluebutton.org/lucid_dev_081/ bigbluebutton-lucid main" | tee /etc/apt/sources.list.d/bigbluebutton.list
echo "deb http://us.archive.ubuntu.com/ubuntu/ lucid multiverse" | tee -a /etc/apt/sources.list

apt-get update

apt-get -y install nano language-pack-en wget gnupg python-apt python-software-properties dnsutils curl lynx
update-locale LANG=en_US.UTF-8

mkdir /src && cd /src
# Add the BigBlueButton key
wget http://ubuntu.bigbluebutton.org/bigbluebutton.asc
apt-key add bigbluebutton.asc

# This prevents error when trying to recreate mknod or something
apt-mark markauto initscripts udev plymouth mountall
#apt-get -y dist-upgrade

# Open office as placeholder only
wget http://bigbluebutton.googlecode.com/files/openoffice.org_1.0.4_all.deb
dpkg -i openoffice.org_1.0.4_all.deb
# Really use LibreOffice
apt-add-repository ppa:libreoffice/libreoffice-4-0
apt-get update
apt-get -y install libreoffice-common libreoffice

}

__prep
