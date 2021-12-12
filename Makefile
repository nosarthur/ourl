.PHONY: build run clean

build:
	stack build

run:
	stack exec ourl

clean:
	stack clean
