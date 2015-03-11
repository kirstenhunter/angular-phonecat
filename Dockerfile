FROM ubuntu:12.04
MAINTAINER Bill Odom (billodom@gmail.com)
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y -q curl python-all wget vim nodejs npm
RUN npm install
RUN npm install -g bower
RUN bower install
RUN npm start
RUN npm test
RUN npm run update-webdriver
