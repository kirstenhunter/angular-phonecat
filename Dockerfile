FROM ubuntu:12.04
MAINTAINER Bill Odom (billodom@gmail.com)
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup | bash -
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y -q curl python-all wget vim build-essential nodejs git shell
ADD . /opt/angular
WORKDIR /opt/angular
RUN curl -L https://npmjs.org/install.sh | sh
RUN npm install
RUN npm update
RUN npm install -g bower
RUN bower install --allow-root
