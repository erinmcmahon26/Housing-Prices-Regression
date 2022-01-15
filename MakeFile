setup:
	python3 -m venv ~/.School_EDA 

install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	python -m pytest -vv --cov=School_EDAlib tests/*.py
	python -m pytest --nbval Housing_Prices_Regression.ipynb
	
format:
	black *.ipynb

lint:
	pylint --disable=R,C Housing_Prices_Regression.ipynb

all: install lint test
