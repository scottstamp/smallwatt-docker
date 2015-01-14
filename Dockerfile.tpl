# Jenni (smallwatt@hypermine.com, ##vaperefugees)
#
# VERSION	0.0.1

FROM debian:wheezy
MAINTAINER Scott Stamp <scott@hypermine.com>

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y python python-pip git supervisor python-lxml python-beautifulsoup python-feedparser

ADD default.py /root/.jenni/
ADD supervisord.conf /etc/supervisor/conf.d/supervisord.conf

RUN echo RANDOM_UUID >/dev/null && cd /root && git clone https://github.com/scottstamp/jenni.git

CMD ["/usr/bin/supervisord"]
