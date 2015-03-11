FROM ubuntu:12.04
MAINTAINER Bill Odom (billodom@gmail.com)
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y -q curl python-all wget vim nodejs npm build-essential
RUN npm cache clean -f
RUN npm install -g n
RUN n stable
ADD . /opt/angular
WORKDIR /opt/angular
RUN curl -L https://npmjs.org/install.sh | sh
