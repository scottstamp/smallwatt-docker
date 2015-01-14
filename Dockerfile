# Jenni (smallwatt@hypermine.com, ##vaperefugees)
#
# VERSION	0.0.1

FROM debian:wheezy
MAINTAINER Scott Stamp <scott@hypermine.com>

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y python python-pip git supervisor python-lxml python-beautifulsoup python-feedparser
RUN cd /root && git clone https://github.com/scottstamp/jenni.git && /root/jenni/jenni && rm -f /root/.jenni/default.py

COPY default.py /root/.jenni/
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

CMD ["/usr/bin/supervisord"]
