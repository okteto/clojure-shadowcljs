FROM clojure:openjdk-14-tools-deps-alpine

RUN apk add --update --no-cache nodejs-npm

WORKDIR /okteto

COPY package.json package-lock.json /okteto/

RUN npm install

RUN npm run deps