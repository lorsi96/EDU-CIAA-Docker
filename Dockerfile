FROM ubuntu:20.04
MAINTAINER lorsi@itba.edu.ar

RUN apt-get update && \
    apt-get install -y software-properties-common && \
    apt-get upgrade -y && \
    apt-get install -y \
      build-essential \
      git \
      bzip2 \
      wget \
      openocd \
      nano \
      picocom \
      python3-dev \
      libasound2-dev \
      libncurses5 \
      doxygen \
      graphviz


RUN cd /opt && \ 
    wget "https://developer.arm.com/-/media/Files/downloads/gnu-rm/10.3-2021.10/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux.tar.bz2" && \
    tar -jxf gcc-arm-none-eabi-10.3-2021.10-x86_64-linux.tar.bz2 && \
    rm gcc-arm-none-eabi-10.3-2021.10-x86_64-linux.tar.bz2

WORKDIR /ciaa
RUN git clone https://github.com/lorsi96/firmware_v3  .
COPY openocd/bin /bin/
COPY openocd /usr/share/openocd

ENV PATH "/opt/gcc-arm-none-eabi-10.3-2021.10/bin:$PATH"
WORKDIR /workspace