IMG_NAME = deploy-aws
DOCKERHUB_ID = bonditdocker

build:
	docker build . \
		--file Dockerfile \
		--tag $(DOCKERHUB_ID)/$(IMG_NAME):latest
# --no-cache

push:
	docker push $(DOCKERHUB_ID)/$(IMG_NAME):latest

pull:
	docker pull $(DOCKERHUB_ID)/$(IMG_NAME):latest

run-it:
	docker run --name $(IMG_NAME)-container -it $(DOCKERHUB_ID)/$(IMG_NAME):latest bash

rm:
	docker rm $(IMG_NAME)-container

login:
	docker login --username $(DOCKERHUB_ID)