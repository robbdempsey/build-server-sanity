# build image from dockerfile

FROM node:boron
MAINTAINER robb dempsey <robb.dempsey@gmail.com>

ENV HOME=/usr/src/app

RUN mkdir -p ${HOME}
WORKDIR ${HOME}

COPY package.json ${HOME}/
COPY .eslintrc ${HOME}/
COPY ./test ${HOME}/test

RUN npm install
