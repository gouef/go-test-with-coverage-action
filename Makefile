.PHONY: install tests

install:
	go mod tidy && go mod vendor

tests:
	go test -covermode=set -coverpkg=./... -coverprofile=coverage.txt ./tests