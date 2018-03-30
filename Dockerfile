FROM node:9.4.0-alpine

ENV MONGODB_URI $CONNECT_STRING

WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install

COPY . .

EXPOSE 8080

CMD [ "npm", "run", "container" ]