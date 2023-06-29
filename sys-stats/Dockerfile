FROM node:18.16-alpine

WORKDIR /usr/frontend

COPY package*.json ./
RUN npm install
COPY ./ ./
COPY entrypoint.sh ./
# ENTRYPOINT [ "sh", "entrypoint.sh" ]