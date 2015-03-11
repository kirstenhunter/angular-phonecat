FROM ubuntu:12.04
MAINTAINER Bill Odom (billodom@gmail.com)
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup | bash -
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y -q curl python-all wget vim build-essential nodejs git
ADD . /opt/gitrepo
WORKDIR /opt/
RUN git clone --depth=14 https://github.com/angular/angular-phonecat.git
WORKDIR /opt/angular-phonecat
RUN curl -L https://npmjs.org/install.sh | sh
RUN npm install
RUN npm update
