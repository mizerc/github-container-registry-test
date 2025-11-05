docker-login-build-push:
	echo "Logging in to Docker registry and pushing the image..."
	echo $(GH_USERNAME)
	echo $(GH_PAT_SECRET)