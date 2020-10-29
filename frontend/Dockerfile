FROM node:10.23-alpine as builder

COPY . /app

WORKDIR app

ENTRYPOINT yarn install && yarn run dist

FROM nginx:alpine

RUN rm -rf /usr/share/nginx/html/*

COPY --from=builder /app/public /usr/share/nginx/html

EXPOSE 80

ENTRYPOINT ["nginx", "-g", "daemon off;"]
