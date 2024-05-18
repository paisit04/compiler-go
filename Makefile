.PHONY: test start

start:
	go build -o monkey . && ./monkey

test:
	go test -v ./...