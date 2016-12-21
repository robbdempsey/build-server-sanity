# build image from dockerfile

FROM node:boron
MAINTAINER robb dempsey <robb.dempsey@gmail.com>

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY package.json /usr/src/app/
RUN npm install
