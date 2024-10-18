#!/bin/bash
## list created pods
kubectl get pod

## submit resource to kubernetes cluster
kubectl create -f examples/nginx.yaml
kubectl create -f examples/nginx-with-label.yaml
kubectl create -f examples/nginx-wit-annotation.yaml
kubectl create -f examples/nginx-with-probe.yaml
kubectl create -f examples/finance-namespace.yaml
kubectl create -f examples/nginx-rc.yaml
kubectl create -f examples/nginx-rs.yaml
kubectl create -f examples/nginx-rs-match-expression.yaml
kubectl create -f examples/daemon-nginx.yaml
kubectl.exe create -f examples/job-nodejs.yaml
kubectl.exe create -f examples/cronjob-nodejs.yaml


## list created pods with label information
kubectl get pods --show-labels

## detail pod
kubectl describe pod nginx-with-annotation

## update label information
kubectl label pod nginx environment=development
kubectl label pod nginx environment=staging --overwrite

## search pod
kubectl get pods -l environment=staging

## add annotation
kubectl annotate pod nginx-with-annotation sesuatu-baru=Ini annotatation

## view namespace
kubectl get namespaces

## view pod in specific namespace
kubectl get pods --namespace default

## create namespace
kubectl create -f examples/finance-namespace.yaml

## create pod in specific namespace
kubectl create -f nginx.yaml --namespace finance-namespace

## delete namespace
kubectl delete namespace finance-namespace

## delete pod
kubectl delete pod nginx

## view replication controller
kubectl get replicationcontrollers
kubectl get replicationcontroller
kubectl get rc

## delete replication controller
kubectl delete rc nginx-rc

## delete replication controller without delete pod
kubectl delete rc nginx-rc --cascade=false

## view replica set
kubectl get replicasets
kubectl get replicaset
kubectl get rs

## view daemon set
kubectl get daemonsets
kubectl get daemonset
kubectl get ds

## view job
kubectl get jobs
kubectl get job

## view cron jobs
kubectl get cronjobs
kubectl get cronjob
kubectl get cj