# (imperative command)

create a pod nginx2-container, image name is nginx, expose the pods at port 80. this must be done in a namespace called custom. 

# solution

k run nginx2-container --image=nginx --port=80 -n custom -o yaml > nginx.yaml
