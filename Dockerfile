FROM java:6-jdk

RUN echo "deb http://archive.debian.org/debian wheezy main" > /etc/apt/sources.list

RUN apt-get update
RUN apt-get install -y ant

RUN mkdir /data
VOLUME /data

WORKDIR /data

CMD ["ant"]
