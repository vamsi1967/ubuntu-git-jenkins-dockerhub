FROM nginx

MAINTAINER Vamshi T

RUN apt-get update \
    && apt-get install -y nginx \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \
    && echo "daemon off;" >> /etc/nginx/nginx.conf


#ADD index.html /usr/

EXPOSE 80

CMD ["nginx"]
