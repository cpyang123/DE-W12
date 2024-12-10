install: 
	pip install --upgrade pip && pip install -r requirements.txt

lint:
	pylint --disable=R,C --ignore-patterns=test_.*?py ./pyconfigs/*.py

all: install lint 
