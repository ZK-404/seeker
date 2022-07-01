FROM alpine:latest
RUN apk update 
RUN apk add --no-cache \
git \
python3 \
py3-pip gcc \
python3-dev \
php php-json openssh
WORKDIR /root
RUN git clone https://github.com/ZK-404/seeker
WORKDIR /root/seeker/
ENTRYPOINT ["/bin/sh"]
