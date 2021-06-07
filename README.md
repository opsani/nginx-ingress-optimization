# nginx-ingress-optimization
Configurations and scripts for Nginx Ingress for Opsani Dev

The defaults assume the use of the [Opsani Bank-of-Anthos](https://github.com/opsani/bank-of-anthos) derived application

install_nginx.sh: A script to pull and launch nginx ingress - Update scipt with nginx-plus docker registry pointer, and the registry credentials secret if required.

frontend-virtualserver.yaml: A "VirtualServer" manifest for the Bank-of-Anthos fontend.  Deploy after Nginx-ingrses is up and running.

ingress-prometheus.yaml: deploy prometheus to the "ingress" nameespacee.

opsani-manifeset-ngnix-plus.yaml: A stripped down opsani-servoX deployment.  Update the Token from the downloaded servo manifest.  Replace {{ surrounded }} information in the docs provided.  Use the downloaded opsani-manifests.yaml to extract the Token,