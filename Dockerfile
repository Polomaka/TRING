FROM redhat/ubi8:latest
EXPOSE 80
MAINTAINER "Eugene Kapatsyna" "e.kapatsyna@hotmail.com"
RUN yum install -y nginx gettext
COPY ./nginx.conf.template /nginx.conf.template
CMD ["/bin/bash" , "-c" , "envsubst < /nginx.conf.template > /etc/nginx/nginx.conf && exec nginx -g 'daemon off;'"]
