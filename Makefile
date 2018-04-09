build:
	docker build --no-cache -t vim .

run:
	docker run -it --rm vim /bin/bash

activate-this:
	cp ./bin/activate_this.py ~/.virtualenvs/pmp/bin/ &&\
	chmod +x ~/.virtualenvs/pmp/bin/activate_this.py
