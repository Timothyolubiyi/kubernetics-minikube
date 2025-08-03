# Imperative command  - are commands you run directly in the terminal (as opposed to using YAML manifests) to quickly create, update, and manage resources.

#  Create Resources

kubectl create deployment nginx-deploy --image=nginx
kubectl create service clusterip my-service --tcp=80:80
kubectl create configmap my-config --from-literal=env=dev
kubectl create secret generic my-secret --from-literal=password=12345

# Create Resource from File (semi-imperative)
kubectl apply -f myfile.yaml

#  Imperative Dry Run (Generate YAML)
kubectl create deployment nginx --image=nginx --dry-run=client -o yaml

# Run a Pod (and delete it when done)

k run nginxweb1 --image nginx -o yaml > output.yaml

or

kubectl run mypod --image=nginx --restart=Never

# Dry run 
k run nginxweb2 --image nginx --dry-run=client -o yaml > output3.yaml

# Expose a Deployment as a Service
kubectl expose deployment nginx-deploy --port=80 --type=NodePort

#  Scale a Deployment
kubectl scale deployment nginx-deploy --replicas=3

# Edit Live Resources
kubectl edit deployment nginx-deploy

# Update Image of a Deployment
kubectl set image deployment/nginx-deploy nginx=nginx:1.25

# Delete Resources
kubectl delete pod mypod
kubectl delete deployment nginx-deploy
kubectl delete service my-service

# View & Debug
kubectl get pods
kubectl get services
kubectl describe pod mypod
kubectl logs mypod
kubectl exec -it mypod -- /bin/bash


# To get information about pod
 k get pods -o wide

# To access a container 
 k exec -it nginxweb2 -- sh

 cd  to the folder.

# To troubleshoot/get information on pods
 k get events
 k describe pods nginxweb3

 