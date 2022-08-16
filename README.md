[![CircleCI](https://dl.circleci.com/status-badge/img/gh/GabrielOnike/ml-project/tree/master.svg?style=svg)](https://dl.circleci.com/status-badge/redirect/gh/GabrielOnike/ml-project/tree/master) 

## Project Overview

**In this project, I have applied the skills required to operationalize a production Machine Learning(ml) Microservice API. ** 
**By Gabriel Onike **

Here is are given a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project showcases my ability to operationalize a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

### Project Files

The projects goal is to operationalize this working, machine learning microservice using [kubernetes](https://kubernetes.io/), which is an open-source system for automating the management of containerized applications. In this project, the files are described as follows:
* app.py - Machine Learning main file app
* model_data - simulated data for the main app
* Makefile - Install, Lint and Test your project code using linting
* Dockerfile - a Dockerfile to containerize this application
* run_docker.sh - Deploy your containerized application using Docker and make a prediction
* docker_out | kubernetes_out - some log statements in the source code for this application
* run_kubernetes.sh - Configure Kubernetes and create a Kubernetes cluster + Deploy a container using Kubernetes and make a prediction
* .circleci - Upload a complete Github repo with CircleCI to build and test code
* requirements.txt - python imports/required libraries for the ml service

---

## The Environment

* Create a virtualenv with Python 3.7 - remember to activate it. Refer to this link for help on specifying the Python version in the virtualenv. 
```bash
python3 -m pip install --user virtualenv
# You should have Python 3.7 available in your host. 
# Check the Python path using `which python3`
# Use a command similar to this one:
python3 -m virtualenv --python=<path-to-Python3.7> .ml-project
source .ml-project/bin/activate
```

### Build Flow
* Run a docker container
* Upload container into a public registry (hub.docker.com)
* Run the deployed application in a Kubernetes cluster
* Integrate with CircleCI for continuous integration


* Run `make install` to install the necessary dependencies

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

### Kubernetes Steps

* Setup and Configure Docker locally
* Setup and Configure Kubernetes locally
* Create Flask app in Container
* Run via kubectl

### Other Important Commands - from Shell/Bash Terminal
* Make all `activating makefile`
* ./run_docker.sh OR sh run_docker.sh | ./run_kubernetes.sh | upload_docker.sh  `runs docker, runs kubernetes and uploading docjer commands`


### REFERENCES
* https://stackoverflow.com/questions/61204189/vs-code-pylintimport-error-unable-to-import-subsub-module-from-custom-direct // solving pylint import errors