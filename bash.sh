
#!/bin/bash

kubectl delete -f redis-cloud-smail.yaml 
kubectl delete -f redis-pod-cloud-smail.yml 
kubectl delete -f redis-service-cloud-smail.yml 
kubectl delete -f redis-service-smail.yml 
kubectl delete -f redis-Smail.yaml 
kubectl apply -f redis-service-smail.yml 
kubectl apply -f redis-service-cloud-smail.yml 
kubectl apply -f redis-Smail.yaml 
kubectl apply -f redis-cloud-smail.yaml 