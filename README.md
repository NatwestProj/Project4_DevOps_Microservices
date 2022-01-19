<include a CircleCI status badge, here>

[![CircleCI](https://circleci.com/gh/NatwestProj/Project4_DevOps_Microservices/tree/main.svg?style=svg)](https://circleci.com/gh/NatwestProj/Project4_DevOps_Microservices/tree/main)

## Project Overview

In this project, you will apply the skills you have acquired in this course to operationalize a Machine Learning Microservice API. 

You are given a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project tests your ability to operationalize a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

### Project Tasks

Your project goal is to operationalize this working, machine learning microservice using [kubernetes](https://kubernetes.io/), which is an open-source system for automating the management of containerized applications. In this project you will:
* Test your project code using linting
* Complete a Dockerfile to containerize this application
* Deploy your containerized application using Docker and make a prediction
* Improve the log statements in the source code for this application
* Configure Kubernetes and create a Kubernetes cluster
* Deploy a container using Kubernetes and make a prediction
* Upload a complete Github repo with CircleCI to indicate that your code has been tested

You can find a detailed [project rubric, here](https://review.udacity.com/#!/rubrics/2576/view).

**The final implementation of the project will showcase your abilities to operationalize production microservices.**

---

## Setup the Environment

* Create a virtualenv with Python 3.7 and activate it. Refer to this link for help on specifying the Python version in the virtualenv. 
```bash
python3 -m pip install --user virtualenv
# You should have Python 3.7 available in your host. 
# Check the Python path using `which python3`
# Use a command similar to this one:
python3 -m virtualenv --python=<path-to-Python3.7> .devops
source .devops/bin/activate
```
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

### Running the application

1. Standalone (Python 3.7): 

__Note__: The flask application runs on port 80; user privilege issues would need to be handled, or changing the port to a port above 1000 would suffice (e.g: 8000).

```
# Setting a python 3.7 virtual environment and activating it
python3 -m venv .venv
source .venv/bin/activate

# Installing the necessary dependencies
make install

# Running the main application
python app.py
```

__Note__: The API would be served on port 8000

2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`


## Project Files

* __.circleci/config.yml:__ CircleCI configuration file.
* __hadolint:__ Hadolint v1.18.0 Linux-86_64 executable. 
* __app.py:__ The Flask web application
* __model_data/boston_housing_prediction.joblib:__ Pretrained sklearn model
* __requirements.txt:__ Required Python packages to run the application
* __Makefile:__ Commands to install and lint the application
* __Dockerfile:__ Defines the Docker container to run the application in
* __upload_docker.sh:__ Tags and uploads the Docker image to DockerHub
* __run_docker.sh:__ Runs the application in a Docker container (defined by the Dockerfile)
* __run_kubernetes.sh:__ Runs the application on a Kubernetes cluster
* __make_prediction.sh:__ Makes a prediction call to the running Application on port 8000
* __output_txt_files/docker_out.txt:__ Console output from running run_docker.sh and make_prediction.sh
* __output_txt_files/kubernetes_out.txt__ Console output from running run_kubernetes.sh and make_prediction.sh

