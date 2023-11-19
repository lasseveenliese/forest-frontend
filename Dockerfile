FROM node:14-alpine
WORKDIR /forest-frontend
RUN apk add python3
RUN apk add build-base
RUN apk add yarn
COPY . .
RUN yarn upgrade
RUN yarn install && NODE_ENV=production yarn build
EXPOSE 3000
ENTRYPOINT [ "yarn", "start" ]
