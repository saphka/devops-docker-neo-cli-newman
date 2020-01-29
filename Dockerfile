FROM saphka/neo-cli:latest

FROM node:12-alpine
ENV LC_ALL="en_US.UTF-8" LANG="en_US.UTF-8" LANGUAGE="en_US.UTF-8" ALPINE_NODE_REPO="oznu/alpine-node"

RUN npm install --global newman
