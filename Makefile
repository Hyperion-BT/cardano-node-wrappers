build-preview:
	docker build -t cardano-previewnet ./preview

run-preview:
	docker run cardano-previewnet
