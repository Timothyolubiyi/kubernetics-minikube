# Persistence Volume
(How do we persist data in k8s)
                       IF  PODS ARE EPHEMERAL

1.Deploy a pod called nginx-pod with the image nginx and 
2.inside the pod create a file text1.txt  inside one of the directories(tmp) saying 
“i love devops” and inside file text.txt echo  today's date
3. Kill this pod nginx-pod
4. Create the pod back and check if the files are still there inside that directory



$ k get pod -o wide
$ k get pod nginx-pod -o wide
$ k exec -it nginx-pod -- bash  
$ echo 'i love devops' > /tmp/text1.txt  

Data can not persist when pod is kill/deleted but its can persist with volume mounted.

