# CLASS TASK
You just joined a company as a new cloud engineer,

1. deploy a pod using the concept of persistent volume, create in msp namespace with persistent volume of msp-pv. This should have a capacity of 100MI with access mode Read-Write once, host path /temp/servicedata.

2. create a persistent volume claim in the same namespace called msp-pvc with capacity 100MI access mode ReadWrite once, confirm that the pvc is bound to the pv

3. create a pod name nginx-mspin the same namespace using the image nginx, volume should be mounted @ /tmp/servicedata with a message that echo "I am doing great in cloud computing" saved in cloud.txt

