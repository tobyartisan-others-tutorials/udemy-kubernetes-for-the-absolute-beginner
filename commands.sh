# minikube commands
minikube start
minikube stop

# View current context
kubectl config current-context

# Change current context
kubectl config set current-context minikube

# Create pod from YAML
kubectl apply -f pod.yaml
kubectl get pods

# Crete replica controller
kubectl create -f rc-definition.yml

# Get replica controllers
kubectl get replicationcontroller

# Crete replica set
kubectl create -f replicaset-definition.yml

# Get replica sets
kubectl get replicaset

# Update replica set
kubectl replace -f replicaset-definition.yml

# Scale replica set
kubectl scale --replicas=6 -f replicaset-definition.yml
kubectl scale --replicas=6 replicaset myapp-replicaset

# Delete replica controller and underlying pods
kubectl delete replicaset myapp-replicaset
