.PHONY: help
help: ## ヘルプコマンド
	@awk 'BEGIN {FS = ":.*?## "} /^[0-9a-zA-Z_-]+:.*?## / {sub("\\\\n",sprintf("\n%22c"," "), $$2);printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)

.PHONY: setup
setup: ## セットアップ
	npm install

.PHONY: start
start: ## 開発用画面作成
	npm start
