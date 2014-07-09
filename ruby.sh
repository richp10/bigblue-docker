#!/bin/bash

__ruby() {
## Needs binary ruby to run ruby compiler, strangely..
apt-get -y install git-core  autoconf bison libssl-dev ruby libreadline6-dev

mkdir -p /src && cd /src && git clone git://github.com/ruby/ruby.git
cd /src/ruby && git checkout tags/v1_9_2_290  && autoconf
./configure
make && make install

export PATH=$PATH:/usr/local/bin

# This removes the old binary ruby
apt-get -y autoremove
 
gem update --system


#update-alternatives --install /usr/bin/ruby ruby /usr/bin/ruby1.9.2 500 \
#                         --slave /usr/bin/ri ri /usr/bin/ri1.9.2 \
#                         --slave /usr/bin/irb irb /usr/bin/irb1.9.2 \
#                         --slave /usr/bin/erb erb /usr/bin/erb1.9.2 \
#                         --slave /usr/bin/rdoc rdoc /usr/bin/rdoc1.9.2
#update-alternatives --install /usr/bin/gem gem /usr/bin/gem1.9.2 500

}

__ruby
