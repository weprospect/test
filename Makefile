.DEFAULT_GOAL := help

.PHONY: build
build: ## build charts and update index
	helm package -d bin src/*
	helm repo index --url https://weprospect.github.io/test .

.PHONY: help
help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
