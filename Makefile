all:
	docker build -t sid .
	docker run -v /tmp:/tmp -ti sid

