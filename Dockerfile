FROM node:18.7.0
WORKDIR /app
COPY package*.json ./
COPY yarn.lock ./
RUN yarn install
COPY . /app
ENV NODE_OPTIONS --openssl-legacy-provider
EXPOSE 3000