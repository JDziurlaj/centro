FROM node:carbon-alpine
RUN apk add --update --no-cache git
RUN mkdir /logs
RUN chown node:node /logs
WORKDIR /code
COPY . .
RUN npm install --silent
#run with low rights
USER node
EXPOSE 3000