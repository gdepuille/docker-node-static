PROJECT_NAME=`basename $(CURDIR)`
IMAGE_NAME=gdepuille/$(PROJECT_NAME)
IMAGE_VERSION=local

build:
	  docker build -t $(IMAGE_NAME):$(IMAGE_VERSION) .

debug:
	  docker run -it --rm $(IMAGE_NAME):$(IMAGE_VERSION) sh

run:
	  docker run -it --rm -p 0:80 $(IMAGE_NAME):$(IMAGE_VERSION)
