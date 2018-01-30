FROM alpine:3.4

MAINTAINER Thuan Duong <coachtranduythanh@gmail.com>

# 50MB
ENV BEANSTALKD_MAX_JOB_SIZE 52428800

RUN sed -i -e 's/v3\.4/edge/g' /etc/apk/repositories && \
    apk --update add beanstalkd

COPY start.sh /

EXPOSE 11300

VOLUME ["/var/log/beanstalkd"]

CMD ["/start.sh"]
