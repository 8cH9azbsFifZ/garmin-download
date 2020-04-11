build:
	docker build . -t garmin-download
	docker build . -t asdlfkj31h/garmin-download:0.2
        
push:
	docker push asdlfkj31h/garmin-download:0.2
