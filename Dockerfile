FROM ubuntu:12.04
MAINTAINER Bill Odom (billodom@gmail.com)
RUN curl -sL https://deb.nodesource.com/setup | bash -
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y -q curl python-all wget vim nodejs npm build-essential
ADD . /opt/angular
WORKDIR /opt/angular
RUN curl -L https://npmjs.org/install.sh | sh
