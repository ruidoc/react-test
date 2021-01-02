FROM nginx:1.18

LABEL maintainer="Ruidoc"

RUN rm /etc/nginx/conf.d/default.conf
RUN mv config/nginx.conf config/default.conf

COPY config/default.conf /etc/nginx/conf.d/
COPY build /var/www

VOLUME /var/www

EXPOSE 80
