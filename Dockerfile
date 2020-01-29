FROM saphka/neo-cli

ENV LC_ALL="en_US.UTF-8" LANG="en_US.UTF-8" LANGUAGE="en_US.UTF-8" ALPINE_NODE_REPO="oznu/alpine-node"
RUN apk add --update nodejs nodejs-npm
RUN npm install --global newman@4.5.7
