build:
	docker build -t jackdwyer/geojson-viewer:latest .

publish: build
	docker push jackdwyer/geojson-viewer:latest

run: build
	docker run -p 5999:80 -it jackdwyer/geojson-viewer:latest

dev-console: build
	docker run -it jackdwyer/geojson-viewer:latest /bin/sh
