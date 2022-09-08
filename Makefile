build-preview:
	docker build -t cardano-previewnet -f ./Dockerfile-preview .

run-preview:
	docker run cardano-previewnet

run-preview-persistent:
	docker run -d -v cardano-node-data:/data cardano-previewnet

build-preprod:
	docker build -t cardano-preprodnet -f ./Dockerfile-preprod .

run-preprod:
	docker run cardano-preprodnet

# XXX: doesn't work for some reason
run-preprod-persistent:
	docker run -d -v cardano-node-data:/data cardano-preprodnet

build-vasil-devnet:
	docker build -t cardano-vasil-devnet -f ./Dockerfile-vasil-devnet .

run-vasil-devnet:
	docker run cardano-vasil-devnet

run-vasil-devnet-persistent:
	docker run -d -v cardano-node-data:/data cardano-vasil-devnet
