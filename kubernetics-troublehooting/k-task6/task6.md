# Task6

1.Create a pod with image nginx with image called nginimage expose traffic on port 80

2.change port image to nginx:1.7.1

3.get nginx pod Ip created in question 2 above

4. Create an nginx pod and set an env value of ‘myval1=myval1’, check the env val

# Solution
1. k run nginimage --image=nginx --port=80

2. k set image pod nginimage nginimage=nginx:1.7.1

3. k edit pod nginimage
:qa!    --save
4. k run nginx4 --image=nginx --help
$ k run nginx4 --image=nginx --env="myval1=myval1"
$ k get pod -o wide
$ k exec -it nginx4 -- bash 

# now check if this pod is running

k get pod nginx4
#now check the logs of the pod nginx4

k logs nginx4cc