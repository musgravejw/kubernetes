docker build -t hello:v2 .
kubectl run hello --image=hello:v1 --port=8080
expose deployment hello --type=LoadBalancer
kubectl set image deployment/hello hello=hello:v2

