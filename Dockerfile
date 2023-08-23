FROM node:16.15.0-alpine

RUN npm install -g npm@latest

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY package.json package-lock.json ./
RUN npm install

COPY . /usr/src/app

EXPOSE 3000

CMD [ "sh" ]