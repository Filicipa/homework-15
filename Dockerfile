FROM node:carbon

ENV TZ=Europe/Kiev

ENV DEBIAN_FRONTEND noninteractive

WORKDIR /web_server

COPY ./react-app/ ./

RUN ls -la

RUN npm install

RUN echo "NODE Version:" && node --version

RUN echo "NPM Version:" && npm --version

EXPOSE 8002

CMD ["npm", "start"]
