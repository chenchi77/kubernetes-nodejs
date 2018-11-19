# Docker Build
docker build -t "chenchi77/demoweb" .
docker push chenchi77/demoweb

# Kubernetes
kubectl apply -f Deployment.yaml
kubectl apply -f Service.yaml
kubectl apply -f Ingress.yaml

# Rolling Update
kubectl set image deployments/web web=chenchi77/demoweb:latest
kubectl rollout status deployments/web