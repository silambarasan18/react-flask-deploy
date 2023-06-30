# Build step #1: build the React front end
FROM node:18.16-alpine as build-step

WORKDIR /app

COPY package*.json ./
COPY ./ ./

RUN npm install

RUN npm run build
# ENTRYPOINT [ "sh", "entrypoint.sh" ]

# Build step #2: build an nginx container
FROM nginx:stable-alpine
COPY --from=build-step  /app/build /var/www/frontend
COPY /nginx/nginx_prod.conf /etc/nginx/conf.d/default.conf