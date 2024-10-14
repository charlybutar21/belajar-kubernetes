#!/bin/bash
## list created pods
kubectl get pod

## submit resource to kubernetes cluster (create if not exist)
kubectl create -f examples/nginx.yaml
kubectl create -f examples/nginx-with-label.yaml
kubectl create -f examples/nginx-wit-annotation.yaml

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

