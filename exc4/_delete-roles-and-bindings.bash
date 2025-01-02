#!/bin/bash

kubectl delete -f view-only-role.yaml
kubectl delete -f configure-role.yaml
kubectl delete -f privileged-role.yaml

kubectl delete -f view-only-binding.yaml
kubectl delete -f configure-binding.yaml
kubectl delete -f privileged-binding.yaml
