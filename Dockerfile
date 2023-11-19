FROM node:14-alpine
WORKDIR /forest-frontend
#RUN apk add python2
RUN apk add python3
RUN apk add build-base
RUN apk add yarn
COPY . .
#RUN npm install -g npm
#RUN npm install -g node-gyp
#RUN yarn cache clean
#RUN yarn add node-sass@6.0.1
#RUN yarn cache clean
#RUN yarn install
RUN yarn upgrade
RUN yarn install && NODE_ENV=production yarn build
EXPOSE 3000

ENTRYPOINT [ "yarn", "start" ]
