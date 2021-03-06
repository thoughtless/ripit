FROM debian:sid
MAINTAINER Patrick Double <pat@patdouble.com>

ENV LANG en_US.UTF-8
ENV LC_ALL C.UTF-8
ENV LANGUAGE en_US.UTF-8

RUN rm -rf /var/lib/apt/lists/* &&\
  apt-get -q update &&\
  DEBIAN_FRONTEND=noninteractive &&\
  apt-get -qy --force-yes dist-upgrade &&\
  apt-get install -qy --force-yes ripit lame eyed3 imagemagick ffmpeg &&\
  apt-get clean &&\
  rm -rf /var/lib/apt/lists/* &&\
  rm -rf /tmp/*

CMD ["/bin/bash"]

