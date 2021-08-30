base_dir :=$(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))
pwd = $(shell pwd)
local_name = mbio-shiny-apps
tag ?= dev

.PHONY: build
build:
	@echo Building $(local_name):$(tag)
	@docker build -t $(local_name):$(tag) .

run:
	@docker run -d -p 8787:8787 -e PASSWORD=mypass -v $(pwd):/home/rstudio/Documents mbio-shiny-apps:dev

stop:
	@docker stop shiny-dev