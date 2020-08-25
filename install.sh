#!/bin/bash

# Set the values according to your Environment
export DS_URL="ds:///vmfs/volumes/vsan:e4fdeb26bf93402f-956989e5b4bf358e/"

kubectl apply -f sc.yaml
helm install prometheus stable/prometheus-operator -f values.yaml
sed 's/.*ds:///vmfs*/1234./'
