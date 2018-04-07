FROM node:9-alpine

RUN npm -g install browser-sync

EXPOSE 3001 7777

# from the command line mount the PWD into the container's
# /source directory; set workdir as this directory so that
# node can find package.json and the subsequent start script
# defined in it: ... -v "$PWD":/source ...
WORKDIR /source
CMD ["npm", "start"]

