FROM node:10.16.0

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY package.json yarn.lock ./
RUN yarn

COPY . .

EXPOSE 3000

CMD [ "./bin/start.sh" ]
