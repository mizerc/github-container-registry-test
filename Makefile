TAG = ghcr.io/$(GH_USERNAME)/github-container-registry-test:latest

docker-login-build-push:
	echo "Logging in to Docker registry and pushing the image..."
	echo $(GH_USERNAME)
	echo $(VAR_ONE)
	echo $(TAG)
	docker login ghcr.io -u $(GH_USERNAME) -p $(GH_PAT_SECRET)
	docker build . -t $(TAG) -f ./Dockerfile
	docker push $(TAG)
