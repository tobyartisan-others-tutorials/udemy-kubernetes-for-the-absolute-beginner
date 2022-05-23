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

# Delete pod
kubectl delete pod POD-NAME

# Crete replica controller
kubectl create -f rc-definition.yml

# Get replica controllers
kubectl get replicationcontroller

# Crete replica set
kubectl create -f replicaset-definition.yml

# Get replica sets
kubectl get replicasets
kubectl get replicasets.apps

# Create YAML from replicaset
kubectl get replicaset new-replica-set -n default -o yaml > rc.yaml

# Describe replica set
kubectl describe replicaset myapp-replicaset

# Update replica set
kubectl replace -f replicaset-definition.yml
kubectl edit replicaset myapp-replicaset

# Scale replica set
kubectl scale --replicas=6 -f replicaset-definition.yml
kubectl scale --replicas=2 replicaset myapp-replicaset

# Delete replica controller and underlying pods
kubectl delete replicaset myapp-replicaset
