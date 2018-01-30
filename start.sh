#!/bin/sh

/usr/bin/beanstalkd -p 11300 -u nobody -z ${BEANSTALKD_MAX_JOB_SIZE}
