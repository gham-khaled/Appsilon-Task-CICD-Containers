UNAME := $(shell uname -m);
is_M1 := $(filter arm64,$(UNAME))

platform:= $(if [ "$$UNAME" == "arm64" ],--platform linux/x86_64,)

build:
	docker build -t appsilon-hello-r $(platform) .
run: build
	docker run --rm -p 3838:3838 appsilon-hello-r
act: # Test Pipeline Locally
	act --container-architecture linux/amd64
