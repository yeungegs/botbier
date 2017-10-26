# Use an official Ubuntu release as a base image
FROM ubuntu:trusty
LABEL maintainer="Elaine Yeung <yeung.egs@gmail.com>"

# Add script to download files
ADD installblz.sh /root/
ADD cleanup.sh /tmp/

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
# Set working directory to root
 && cd /root/ \
# Install pysc2
 && pip install pysc2 \
 && export SC2PATH=~/StarCraftII/

# start run!
CMD ["./tmp/cleanup.sh"]
