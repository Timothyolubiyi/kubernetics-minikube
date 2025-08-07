# Task 1 YES

I. Create a single pod of image httpd:alpine3.20 in namespace application (check if namespace exist or not)
Pls the pod should be name web1.

Ii. Write  a shell script to output the status of the pod


# SOLN
$ kubectl run web1 --namespace=application --image=httpd:alpine3.20 --dry-run=client -o yaml > pod1.yaml

$k get pods -n application

$k -n application get pod web1  -o yaml
$K -n application get pod web1  -o json
$k -n application get pod web1  -o jsonpath={.status}
$K -n application get pod web1  -o jsonpath={.status.phase}   -to show runing