#Task5  
I. Create a Resource Quota called “reqQuota '' with hard limits of 1 CPU,!G memory and  pods without creating it.
Ii. Get pods on all namespaces
............................
# Solution
k create resourcequota --help

kubectl create quota reqQuota --hard=cpu=1,memory=1G,pods=2 --dry-run=client --validate -o yaml > 5.yaml


k get ns -A
#get all pods in all namespaces

k get pods -A