build:
	docker build . -t garmin-download
	docker build . -t asdlfkj31h/garmin-download:0.1
        
push:
	docker push asdlfkj31h/garmin-download:0.1
