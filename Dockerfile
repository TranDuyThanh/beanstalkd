FROM alpine:3.4

MAINTAINER Tran Duy Thanh <coachtranduythanh@gmail.com>

# 50MB
ENV BEANSTALKD_MAX_JOB_SIZE 52428800

RUN addgroup -S beanstalkd && adduser -S -G beanstalkd beanstalkd

RUN sed -i -e 's/v3\.4/edge/g' /etc/apk/repositories && \
    apk --update add beanstalkd

RUN mkdir /var/log/beanstalkd && chown beanstalkd:beanstalkd /var/log/beanstalkd

COPY start.sh /

EXPOSE 11300

VOLUME ["/var/log/beanstalkd"]

CMD ["/start.sh"]
