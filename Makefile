IMG_NAME = deploy-aws
DOCKERHUB_ID = bonditdocker

build:
	docker build . \
		--file Dockerfile \
		--tag $(DOCKERHUB_ID)/$(IMG_NAME):latest
# --no-cache

push:
	docker push $(DOCKERHUB_ID)/$(IMG_NAME):latest

login:
	docker login --username $(DOCKERHUB_ID)