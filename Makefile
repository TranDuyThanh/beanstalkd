build:
	@echo Build docker image
	docker build --rm -t tranduythanh/beanstalkd:latest .

push:
	docker push tranduythanh/beanstalkd:latest
