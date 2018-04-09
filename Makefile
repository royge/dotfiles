build:
	docker build -t vim .

run:
	docker run -it --rm vim /bin/bash

installpyactivate:
	export VENV_DIR=~/.virtualenvs/your-venv &&\
	cp ./bin/activate_this.py $(VENV_DIR)/bin/ &&\
	chmod +x ~/.virtualenvs/pmp/bin/activate_this.py
