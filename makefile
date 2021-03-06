.PHONY: build
build:
	go build -tags luajit

.PHONY: build-static
build-static:
	go build -tags luajit --ldflags '-extldflags "-lm -ldl -static"' -o heart-static

install: build
	mv heart ~/.bin
