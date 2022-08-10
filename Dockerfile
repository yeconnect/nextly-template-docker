FROM node:18.7.0
WORKDIR /app
COPY package.json yarn.lock ./
RUN yarn install
# 以下追記
COPY ./ ./
RUN yarn install
COPY . /app
ENV NODE_OPTIONS --openssl-legacy-provider
EXPOSE 3000