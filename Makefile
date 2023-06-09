vet:
	go vet ./...

lint:
	helm lint ./charts/actions-runner-broker

build:
	go build -o ./bin/dispatcher ./cmd/dispatcher/main.go

deps:
	go mod download

image:
	docker build -t public.ecr.aws/axatol/actions-runner-broker-dispatcher:latest .
