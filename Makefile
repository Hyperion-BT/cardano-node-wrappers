build-preview:
	docker build -t cardano-previewnet ./preview

run-preview:
	docker run cardano-previewnet

run-preview-persistent:
	docker run -d -v cardano-node-data:/data cardano-previewnet

build-preprod:
	docker build -t cardano-preprodnet ./preprod

run-preprod:
	docker run cardano-preprodnet

run-preprod-persistent:
	docker run -d -v cardano-node-data:/data cardano-preprodnet
