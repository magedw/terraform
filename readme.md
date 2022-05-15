














curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3



kubectl --namespace=kube-system create clusterrolebinding add-on-cluster-admin --clusterrole=cluster-admin --serviceaccount=kube-system:default


helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm repo update


helm install -f prometheus.yml prometheus prometheus-community/prometheus
kubectl get pods
