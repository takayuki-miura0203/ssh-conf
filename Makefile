.PHONY: help
help: ## help
	@awk 'BEGIN {FS = ":.*?## "} /^[0-9a-zA-Z_-]+:.*?## / {sub("\\\\n",sprintf("\n%22c"," "), $$2);printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)

.PHONY: setup
setup: ## setup
	npm install

.PHONY: electron
electron: ## run electron on dev
	npm run electron

.PHONY: build
build: ## build react
	npm run build
