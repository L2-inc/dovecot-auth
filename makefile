.build: Dockerfile
	docker build . -t kzwin/postfix-submission > .build
push: Dockerfile .build
	docker push kzwin/postfix-submission > push
