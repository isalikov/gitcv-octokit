V := @

NAME := gitcv-octokit
OUT_DIR := ./target

MAIN_OUT := $(OUT_DIR)/$(NAME)
MAIN_PKG := ./cmd/$(NAME)

default: build

.PHONY: build
build:
	@echo BUILDING $(MAIN_OUT)
	$(V)go build -o $(MAIN_OUT) $(MAIN_PKG)
	@echo DONE

.PHONY: run
run:
	go run ./cmd/$(NAME)/main.go