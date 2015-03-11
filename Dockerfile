FROM ubuntu:12.04
MAINTAINER Bill Odom (billodom@gmail.com)
RUN apt-get update
RUN curl -sL https://deb.nodesource.com/setup | bash -
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y -q curl python-all wget vim build-essential nodejs
ADD . /opt/angular
WORKDIR /opt/angular
RUN curl -L https://npmjs.org/install.sh | sh
