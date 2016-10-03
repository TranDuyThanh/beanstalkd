FROM alpine:3.4

MAINTAINER Thuan Duong <thuandt26@gmail.com>

RUN sed -i -e 's/v3\.4/edge/g' /etc/apk/repositories && \
    apk --update add beanstalkd


EXPOSE 11300
VOLUME ["/var/log/beanstalkd"]
CMD ["beanstalkd", "-p", "11300", "-u", "nobody"]
