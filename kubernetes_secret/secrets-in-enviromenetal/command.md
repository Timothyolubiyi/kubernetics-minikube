
k apply -f pod-env.yaml
k get pods
k describe pod env-pod
k exec -it env-pod -- sh

ls
hostname

env | grep USER       (change username to USER)
env | grep PASSWORD       (change username to PASSWORD)
