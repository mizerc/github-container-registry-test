TAG = ghcr.io/$(GH_USERNAME)/github-container-registry-test:latest

docker-login-build-push:
	echo "Logging in to Docker registry and pushing the image..."
	echo $(GH_USERNAME)
	echo $(VAR_ONE)
	echo $(TAG)
	echo "${GH_PAT_SECRET}" | docker login ghcr.io -u "${GH_USERNAME}" --password-stdin
	docker build . -t $(TAG) -f ./Dockerfile
	docker push $(TAG)
