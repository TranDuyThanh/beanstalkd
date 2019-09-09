#!/bin/sh

/usr/bin/beanstalkd -p 11300 -u beanstalkd -b /var/log/beanstalkd -z ${BEANSTALKD_MAX_JOB_SIZE}
