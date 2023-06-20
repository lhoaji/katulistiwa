# This file is a template, and might need editing before it works on your project.
FROM node:16

WORKDIR /usr/src/app

ARG NODE_ENV
ENV NODE_ENV $NODE_ENV

ENV PORT 80
ENV HOST 0.0.0.0

COPY . /usr/src/app
RUN npm install
RUN npm install -g serve
RUN npm run build

# replace this with your application's default port
EXPOSE 80

WORKDIR /usr/src/app/build
CMD [ "serve" ]
