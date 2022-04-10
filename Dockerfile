FROM nginx

LABEL name="nginx-dokcer-vue-front"
LABEL version="1.0"
COPY ./dist /usr/share/nginx/html
COPY ./vue-front.conf /etc/nginx/conf.d
WORKDIR /app

EXPOSE 80
