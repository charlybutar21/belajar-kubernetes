## list created pods
kubectl get pod

## submit resource to kubernetes cluser
kubectl create -f examples/nginx.yaml
kubectl create -f examples/nginx-with-label.yml

## list created pods with label information
kubectl get pod --show-label