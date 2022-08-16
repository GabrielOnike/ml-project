## The Makefile includes instructions on environment setup and lint tests
# Create and activate a virtual environment
# Install dependencies in requirements.txt
# Dockerfile should pass hadolint
# app.py should pass pylint
# (Optional) Build a simple integration test

setup:
	# Create python virtualenv & source it
	# source ~/.devops/bin/activate
	python3 -m venv ~/.devops
	source ~/.devops/bin/activate

install:
	# This should be run from inside a virtualenv
	pip install --upgrade pip &&\
		pip install -r requirements.txt &&\
	wget -O ~/.devops/bin/hadolint https://github.com/hadolint/hadolint/releases/download/v1.16.3/hadolint-Linux-x86_64 &&\
		sudo chmod +x ~/.devops/bin/hadolint &&\
	# Above ive Added Install Hadolint:fetch Hadolint and install it in the local directory. Not needed if its installed locally, i.e. global but rqd for proper containerization 
	# Please make sure that you are installing it in the local directory instead of attempting to install it in the bin folder which will require administrator access		

test:
	# Additional, optional, tests could go here
	#python -m pytest -vv --cov=myrepolib tests/*.py
	#python -m pytest --nbval notebook.ipynb

lint:
	# See local hadolint install instructions:   https://github.com/hadolint/hadolint
	# This is linter for Dockerfiles
	# hadolint Dockerfile <- for local only
	# Since the above command will install hadolint in the current directory I run it below from the current directory
	./bin/hadolint Dockerfile
	# This is a linter for Python source code linter: https://www.pylint.org/
	# This should be run from inside a virtualenv
	pylint --disable=R,C,W1203,W1202 app.py 
	# pylint --disable=R,C, app.py   // OR the above

all: install lint test
