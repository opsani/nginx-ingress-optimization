helm repo add nginx-stable https://helm.nginx.com/stable
helm repo update
helm install ingress nginx-stable/nginx-ingress \
 --set prometheus.create=true --namespace ingress
kubectl apply -f docker-registry-regcred.yaml -n ingress
helm install ngp-ingress nginx-stable/nginx-ingress \
  --set controller.image.repository={{path to nginx-pluus private image}} \
  --set controller.nginxplus=true \
  --set controller.serviceAccount.imagePullSecretName={{ registry credentials secret}} \
  --set prometheus.create=true --namespace ingress
