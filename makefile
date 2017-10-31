.build: Dockerfile
	docker build . -t kzwin/dovecot-auth > .build
push: Dockerfile .build
	docker push kzwin/dovecot-auth > push
