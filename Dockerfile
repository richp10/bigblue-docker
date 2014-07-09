FROM 	ubuntu:10.04
# this is Lucid, 10.4.4

MAINTAINER Richard Phillips - https://github.com/richp10/bigblue-docker

ADD	prep.sh		/prep.sh
ADD	ffmpeg.sh	/ffmpeg.sh
ADD	ruby.sh		/ruby.sh
ADD	redis.sh	/redis.sh
ADD	redis.conf	/redis.conf
ADD	redis.monit 	/redis.monit

RUN	/bin/bash	/prep.sh
RUN	/bin/bash	/ffmpeg.sh
RUN	/bin/bash	/ruby.sh
RUN	/bin/bash	/redis.sh

ADD     monit.sh        /monit.sh
RUN     /bin/bash       /monit.sh
ADD     monit           /etc/monit.d/bigblue

ADD     bigblue.sh      /bigblue.sh
RUN 	/bin/bash 	/bigblue.sh
