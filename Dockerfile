FROM ghcr.io/rhargreaves/docker-sgdk:v1.70-mw
USER root
RUN apt-get -y update && \
    apt-get -y install \
    build-essential \
    cmake \
    gdb \
    gdbserver \
    valgrind
WORKDIR /app
COPY . /app
EXPOSE 2345
ENTRYPOINT []
