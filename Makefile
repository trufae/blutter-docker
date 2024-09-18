all:
	docker build -t blutter .
	docker run -v /tmp:/tmp -ti blutter

new:
	docker build --no-cache -t blutter .
	docker run -v /tmp:/tmp -ti blutter

.PHONY: all new
