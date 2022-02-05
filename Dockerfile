FROM java:6-jdk

LABEL org.opencontainers.image.authors="Thomas.Mohaupt@gmail.com"
LABEL org.opencontainers.image.url="https://github.com/thomo/jdk6-ant"
LABEL org.opencontainers.image.documentation="https://github.com/thomo/jdk6-ant/blob/main/README.md"
LABEL org.opencontainers.image.version="1.1"
LABEL org.opencontainers.image.description="jdk6 with ant"

RUN echo "deb http://archive.debian.org/debian wheezy main" > /etc/apt/sources.list

RUN useradd dev

RUN mkdir /data && chown dev /data

RUN apt-get update && apt-get install -y \
    ant \
  && rm -rf /var/lib/apt/lists/*

USER dev

VOLUME /data
WORKDIR /data

CMD ["ant"]
