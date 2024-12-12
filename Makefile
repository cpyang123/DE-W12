install: 
	pip install --upgrade pip && pip install -r requirements.txt

lint:
	pylint --disable=R,C --ignore-patterns=test_.*?py ./pyconfigs/*.py

build:
	docker build -t de-w12 . 

all: install lint 
