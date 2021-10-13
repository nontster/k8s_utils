#!/bin/sh
for n in $(kubectl get -A --no-headers -o=custom-columns=NS:.metadata.namespace,KIND:.kind,NAME:.metadata.name pvc,configmap,serviceaccount,secret,ingress,service,deployment,statefulset,hpa,job,cronjob | awk '{printf "%s,%s/%s\n",$1,$2,$3}')
do
    RS=$(echo $n | cut -d ',' -f 2)
    NS=$(echo $n | cut -d ',' -f 1)
    mkdir -p $(dirname $NS/$RS)
    kubectl get -n $NS -o=yaml $RS > $NS/$RS.yaml
done