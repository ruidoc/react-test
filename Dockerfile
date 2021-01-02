FROM nginx:1.18

LABEL maintainer="Ruidoc"

RUN rm /etc/nginx/conf.d/default.conf

COPY config/app.conf /etc/nginx/conf.d/
COPY build /var/www

VOLUME /var/www

EXPOSE 80
