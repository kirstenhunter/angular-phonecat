FROM ubuntu:12.04
MAINTAINER Bill Odom (billodom@gmail.com)
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y -q curl python-all wget vim nodejs npm
ADD . /opt/angular
WORKDIR /opt/angular
