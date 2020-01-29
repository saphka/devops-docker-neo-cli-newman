FROM saphka/neo-cli

RUN apk add --update nodejs nodejs-npm
RUN npm install --global newman@4.5.7
