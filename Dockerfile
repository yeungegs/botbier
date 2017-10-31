# Use an official Ubuntu release as a base image
FROM ubuntu:trusty
LABEL maintainer="Elaine Yeung <yeung.egs@gmail.com>"

# Add script to download files
ADD installblz.sh /root/

# Set bash as default
SHELL ["/bin/bash", "-c"]

# Update and install packages for SC2 development environment
RUN apt-get update --assume-yes --quiet=2 \
 && apt-get build-dep --assume-yes --no-install-recommends --no-show-upgraded --quiet=2 python-pygame \
 && apt-get install --assume-yes --no-install-recommends --no-show-upgraded --quiet=2 \
    build-essential gcc \
    emacs \
    git \
    python-pip \
    python-pygame \
    unzip \
    valgrind \
    vim \
    wget \
    build-essential \
# Set working directory to root
 && cd /root/ \
# Install pysc2
 && pip install pysc2 \
 && export SC2PATH=~/StarCraftII/ \
# Install CMake
 && wget https://cmake.org/files/v3.10/cmake-3.10.0-rc3.tar.gz \
 && tar xf cmake-3.10.0-rc3.tar.gz \
 && cd cmake-3.10.0-rc3 \
 && ./configure \
 && make install \
 && cd ~/ \
 && git clone --recursive https://github.com/Blizzard/s2client-api \
 && cd s2client-api/ \
 && mkdir build \
 && build/ \
 && cmake ../ \
 && make
