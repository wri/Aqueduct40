.PHONY: default
default: serve

.PHONY: serve
serve:
	. venv/bin/activate && mkdocs serve

.PHONY: build
build:
	. venv/bin/activate && mkdocs build

.PHONY: clean
clean:
	rm -rf site/

.PHONY: clean-all
clean-all: clean
	rm -rf venv/

.PHONY: venv
venv: clean-all
	virtualenv --python=python3.6 venv && . venv/bin/activate && pip install -r requirements.txt

