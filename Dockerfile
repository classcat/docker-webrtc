FROM classcat/ubuntu-supervisord2:vivid
MAINTAINER ClassCat Co.,Ltd. <support@classcat.com>

########################################################################
# ClassCat/WebRTC Dockerfile
#   Maintained by ClassCat Co.,Ltd ( http://www.classcat.com/ )
########################################################################

#--- HISTORY -----------------------------------------------------------
#-----------------------------------------------------------------------

WORKDIR /usr/local
RUN apt-get update && apt-get -y install g++ make \
  && wget http://nodejs.org/dist/v0.10.37/node-v0.10.37.tar.gz \
  && tar xfz node-v0.10.37.tar.gz \
  && cd node-v0.10.37 \
  && ./configure && make && make install

WORKDIR /opt
ADD assets/cc-init.sh /opt/cc-init.sh

EXPOSE 22

CMD /opt/cc-init.sh; /usr/bin/supervisord -c /etc/supervisor/supervisord.conf
