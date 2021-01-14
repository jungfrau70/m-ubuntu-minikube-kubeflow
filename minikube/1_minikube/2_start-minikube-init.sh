#!/bin/bash

#sudo groupadd docker
#sudo usermod -aG docker $USER
#newgrp docker

minikube start --driver=docker \
	--kubernetes-version v1.15.0 \
	--extra-config=apiserver.service-account-issuer=api \
	--extra-config=apiserver.service-account-signing-key-file=/var/lib/minikube/certs/apiserver.key \
	--extra-config=apiserver.service-account-api-audiences=api

#minikube start --vm-driver=none --cpus 6 --memory 12288 --disk-size=120g \
#	--docker-opt default-runtime=nvidia --feature-gates=DevicePlugins=true --kubernetes-version v1.15.0 \
#	--extra-config=apiserver.service-account-issuer=api \
#	--extra-config=apiserver.service-account-signing-key-file=/var/lib/minikube/certs/apiserver.key \
#	--extra-config=apiserver.service-account-api-audiences=api
