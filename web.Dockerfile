FROM node:lts

RUN npm install concurrently -g

WORKDIR /hyperswitch-web

COPY ./ /hyperswitch-web/
COPY custom-hyperswitch-web/.env /hyperswitch-web/.env

RUN npm install

EXPOSE 9050
EXPOSE 5252
EXPOSE 9060

CMD concurrently "npm run re:build && npm run start" "npm run start:playground"