FROM ubuntu:precise
RUN echo deb http://archive.ubuntu.com/ubuntu/ precise main universe > /etc/apt/sources.list.d/precise.list
RUN apt-get update -q
RUN apt-get install -qy openvpn iptables socat curl
ADD ./bin /usr/local/sbin
VOLUME /etc/openvpn
EXPOSE 1194/udp 8008/tcp
CMD run
