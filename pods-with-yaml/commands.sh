# View current context
kubectl config current-context


# Create pod from YAML
kubectl config set current-context minikube
kubectl apply -f pod.yaml
kubectl get pods
