# Kube Prometheus Stack 

Good starting point to monitor Kubernetes and applications in your cluster. 

```bash
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm repo update
kubectl create namespace monitoring
helm install -f values.yaml -n monitoring monitoring prometheus-community/kube-prometheus-stack
```