FROM alpine:3.4

MAINTAINER Thuan Duong <coachtranduythanh@gmail.com>

RUN sed -i -e 's/v3\.4/edge/g' /etc/apk/repositories && \
    apk --update add beanstalkd

# 50MB
ENV BEANSTALKD_MAX_JOB_SIZE 52428800

EXPOSE 11300
VOLUME ["/var/log/beanstalkd"]
CMD ["beanstalkd", "-p", "11300", "-u", "nobody", "-z", "$BEANSTALKD_MAX_JOB_SIZE"]
