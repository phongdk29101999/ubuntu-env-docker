FROM ubuntu:18.04

# install necessary packages/tools
RUN apt update && apt install -y \
    supervisor \
    build-essential \
    manpages-dev \
    curl \
    zip \
    wget \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

COPY config/supervisord.conf /etc/supervisord.conf

ENTRYPOINT ["supervisord","-c","/etc/supervisord.conf"]