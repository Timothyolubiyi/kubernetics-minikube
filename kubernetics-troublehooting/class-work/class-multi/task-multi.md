# Task-multi

Create a pod called pod-multi, with two containers as given below.
container1: --name=container1, image=nginx.
container2: --name=container2, image=busybox, command sleep 4800

# SOLUTION
k run container1 --image=nginx --dry-run=client -o yaml > pod-multi.yaml

$ k get pod -o wide
$ k exec -it nginx4 -- bash 

k exec -it multi-container-pod -- sh
k -n mct exec -it nginx-mct -- sh

- name: container2
    image: busybox
    command: ["/bin/sh", "-c", sleep 4800"]