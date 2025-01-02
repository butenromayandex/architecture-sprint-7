#!/bin/bash

kubectl apply -f view-only-role.yaml
kubectl apply -f configure-role.yaml
kubectl apply -f privileged-role.yaml

kubectl apply -f view-only-binding.yaml
kubectl apply -f configure-binding.yaml
kubectl apply -f privileged-binding.yaml
