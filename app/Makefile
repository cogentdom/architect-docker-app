IMAGE_NAME := chief-dom/stockapp
IMAGE_TAG := $(VERSION)-$(CHANNEL)

ifeq ($(IMAGE_TAG),-)
	IMAGE_TAG := v1
endif

default: release

build: ## Build the container without caching
#     docker buildx build --no-cache --load -t $(REGISTRY)$(IMAGE_NAME):$(IMAGE_TAG) .
	docker build --no-cache -t $(REGISTRY)$(IMAGE_NAME):$(IMAGE_TAG) .

release: build publish ## Make a release by building and publishing tagged image to Docker Trusted Registry (DTR)

publish: ## Publish image to DTR
	@echo 'publish $(REGISTRY)$(IMAGE_NAME):$(IMAGE_TAG)'
	docker push $(REGISTRY)$(IMAGE_NAME):$(IMAGE_TAG)
