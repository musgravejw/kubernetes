docker build -t hello:v2 .

kubectl run hello --image=hello:v1 --port=8080
kubectl expose deployment hello --type=LoadBalancer
kubectl set image deployment/hello hello=hello:v2

# replication controller
#kubectl create -f kubernetes.json
#kubectl expose replicationcontroller hello --type=LoadBalancer

