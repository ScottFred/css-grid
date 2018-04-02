FROM node:9

RUN npm -g install browser-sync
WORKDIR /source

ADD entrypoint.sh /entrypoint.sh
EXPOSE 3001 7777

ENTRYPOINT ["/entrypoint.sh"]

