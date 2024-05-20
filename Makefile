.PHONY: test start benchmark

start:
	go build -o monkey . && ./monkey

test:
	go test -v ./...

benchmark:
	go build -o fibonacci ./benchmark
	./fibonacci -engine=eval
	./fibonacci -engine=vm