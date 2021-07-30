FROM alpine:3.10

RUN apk add --update git python make g++ nodejs npm bash
RUN addgroup -S node && adduser -S node -G node

RUN mkdir -p /usr/src/app
RUN chown node /usr/src/app

USER node
WORKDIR /usr/src/app

COPY --chown=node:node package-lock.json package.json ./

RUN npm ci

COPY --chown=node:node . .