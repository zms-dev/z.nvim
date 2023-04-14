.PHONY: install precommit test format lint

install:
	pre-commit install

precommit:
	pre-commit run --all-files

test:
	nvim -l lua/z/testing/runner.lua lua/z

format:
	stylua --color always --check lua/z

fix:
	stylua --color always lua/z

lint:
	luacheck lua/z

workflows:
	act -s GITHUB_TOKEN