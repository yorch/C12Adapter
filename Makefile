DOCKER_IMAGE=c12adapter

docker-build:
	docker buildx build -t $(DOCKER_IMAGE) --progress plain .

docker-run:
	docker run -it --rm --name $(DOCKER_IMAGE) $(DOCKER_IMAGE) bash
