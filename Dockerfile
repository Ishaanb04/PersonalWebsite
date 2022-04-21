#Use the node:10-alpine image as a base to
FROM node:10-alpine
#create a directory for the app and its node_modules with node as its owner

RUN mkdir -p /home/node/app/ && chown -R node:node /home/node/app

WORKDIR /home/node/app
#install all packages in package.json

COPY package*.json ./

USER node

EXPOSE 8080

RUN npm install

COPY --chown=node:node . .
#expose port 8080 and run the app
#the docker lecture will help you complete this file 
#there should be a total of 9 lines
