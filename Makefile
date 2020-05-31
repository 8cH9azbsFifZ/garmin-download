VER=0.3
build:
	docker build . -t garmin-download -t asdlfkj31h/garmin-download:${VER} -t asdlfkj31h/garmin-download:latest
        
push:
	docker push asdlfkj31h/garmin-download:${VER}
	docker push asdlfkj31h/garmin-download:latest
