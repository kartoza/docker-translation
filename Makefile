SHELL := /bin/bash

build:
	@echo
	@echo "Building docker image"
	@docker build -t kartoza/qt-translation .
