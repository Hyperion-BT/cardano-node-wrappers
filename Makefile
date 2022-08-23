build-preview:
	docker build -t cardano-previewnet ./preview

run-preview:
	docker run cardano-previewnet

build-preprod:
	docker build -t cardano-preprodnet ./preprod

run-preprod:
	docker run cardano-preprodnet
