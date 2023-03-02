FROM ubuntu
MAINTAINER Alexandr Linux <site bafista.ru>

# LABEL about the custom image
LABEL version="0.1"
LABEL description="This tor client image for \
the tor client official packages repositoriy ubuntu"

# Disable Prompt During Packages Installation
ARG DEBIAN_FRONTEND=noninteractive

# Update Ubuntu Software repository
RUN apt update && \
apt upgrade -y && \
apt install tor -y && \
rm -rf /var/lib/apt/lists/* && \
apt clean

EXPOSE 9050

ADD ./torrc /etc/tor/torrc

CMD /usr/bin/tor -f /etc/tor/torrc
