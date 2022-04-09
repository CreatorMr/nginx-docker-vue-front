FROM nginx

LABEL name="vue-back"
LABEL version="1.0"
COPY ./dist /usr/share/nginx/html
COPY ./vue-front.conf /etc/nginx/conf.d
WORKDIR /app

RUN npm install
EXPOSE 3000
CMD npm start
