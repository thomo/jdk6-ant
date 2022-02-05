FROM java:6-jdk

LABEL org.opencontainers.image.authors="Thomas.Mohaupt@gmail.com"
LABEL description="jdk6 with ant"

RUN echo "deb http://archive.debian.org/debian wheezy main" > /etc/apt/sources.list

LABEL version="1.0"

RUN apt-get update
RUN apt-get install -y ant

RUN mkdir /data
VOLUME /data

WORKDIR /data

CMD ["ant"]
