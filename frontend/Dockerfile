FROM nginx:alpine

RUN rm -rf /usr/share/nginx/html/*

ARG DIST=frontend/public

COPY ${DIST} /usr/share/nginx/html

EXPOSE 80

ENTRYPOINT ["nginx", "-g", "daemon off;"]
