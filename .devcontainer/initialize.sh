#!/bin/bash

# Start k8s cluster
minikube start

# Download kubevela
curl -fsSl https://kubevela.io/script/install.sh | bash

# Install CLI
vela install

# Install UI
vela addon enable velaux
vela addon enable terraform

# Port forward UI
vela port-forward -n vela-system addon-velaux 8000:8000