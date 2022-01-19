OWNER := cogentdom
IMAGE_NAME := python
VERSION := ubuntu
REPOSITORY := docker_vps_app
IMAGE_ID := 
REGISTRY := chiefdom

default: 
	@echo 'Specify target'

new: build_new
git: tag_git build_git publish_git
drhub: build_drhuh publish_drhuh

all: git drhub

# ------ Initial build ------
build_new: ## Build the container without caching
	docker build -t $(IMAGE_NAME):$(VERSION) .


# ------ Dockhub build ------
build_drhuh: ## Build the container without caching
	docker build -t $(REGISTRY)/$(IMAGE_NAME):$(VERSION) .

# release_dh:  ## Make a release by building and publishing tagged image to Docker Trusted Registry (DTR)

publish_drhuh: ## Publish image to DTR
	@echo 'publish $(REGISTRY)$(IMAGE_NAME):$(VERSION)'
	docker push $(REGISTRY)/$(IMAGE_NAME):$(VERSION)


# ------ Github build ------
tag_git:
	docker tag $(IMAGE_ID) docker.pkg.github.com/$(OWNER)/$(REPOSITORY)/$(IMAGE_NAME):$(VERSION)

build_git: ## Build the container forrmated for githubs api
	docker build -t docker.pkg.github.com/$(OWNER)/$(REPOSITORY)/$(IMAGE_NAME):$(VERSION) .

# release_git: tag_git build_git publish_git ## Make a release by building and publishing tagged image to Docker Trusted Registry (DTR)

publish_git: ## Publish image to DTR
	@echo 'publish $(REGISTRY)/$(IMAGE_NAME):$(VERSION)'
	docker push docker.pkg.github.com/$(OWNER)/$(REPOSITORY)/$(IMAGE_NAME):$(VERSION)