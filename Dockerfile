FROM node:boron

WORKDIR /usr/src/app

COPY package.json .

RUN npm install serve

COPY . .

EXPOSE 5000

CMD [ "node_modules/.bin/serve", "-s", "build" ]