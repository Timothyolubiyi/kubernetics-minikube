# Task 4
In namespace mct create a persistence volume  mct-pv.It should have capacity 100MI with access mode ReadWriteOnce and hostpath /tmp/data, no storage class named defined.
In the same namespace create  a PersistentVolumeClaim  called mct-pvc, it should request 100MI and access mode ReadWriteOnce.

N/B the PVC should be bound to the PV correctly.

In the same namespace create a pod called nginx-mct using the image nginx while the container name is mct-container, which mounts the volume at /tmp/proj

# Task4 Solution
# A. 
touch mct-pv.yaml 
vi mct-pv.yaml
......................
apiVersion: v1
kind: PersistentVolume
metadata:
  namespace: mct
  name: mct-pv
  
spec:
  capacity:
    storage: 100Mi
  accessModes:
    - ReadWriteOnce
  hostPath:
    path: "/tmp/data"
Clement Ayeni
2:25 PM
mct-pvc.yaml
mct-pvc.yaml
................

k apply -f mct-pv.yaml
k get pv     ---persistence voolume

# B
touch mct-pvc.yaml
vi mct-pvc.yaml

..........................
apiVersion: v1


kind: PersistentVolumeClaim


metadata:

 namespace: mct

 name: mct-pvc

spec:
 accessModes:
   - ReadWriteOnce
 resources:
   requests:
     storage: 100Mi
.....................................
 k apply -f mct-pvc.yaml
 k get pvc -n mct

# C
vi nginx.yaml 
.....................

apiVersion: v1
kind: Pod
metadata:
  namespace: mct
  name: nginx-mct
spec:
  volumes:
    - name: task-pv-storage
      persistentVolumeClaim:
        claimName: mct-pvc
  containers:
    - name: mct-container
      image: nginx
      volumeMounts:
        - mountPath: "/tmp/projectdata"
          name: task-pv-storage
...........................
k apply -f nginx.yaml
k get pods -n mct
k -n mct exec -it nginx-mct -- sh
echo "hello welcome Timothy, i just love devops" > love.txt

exit

kubectl -n mct delete pod nginx-mct
touch nginx.yaml
# cd tmp
# ls
