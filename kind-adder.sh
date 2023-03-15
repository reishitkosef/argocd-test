#! /bin/bash

MIN_KIND=42
MAX_KIND=80

for ((i=$MIN_KIND; i<=$MAX_KIND; i++))
do
    cp kinds/kind-cluster-01_cr.yaml kinds/kind-cluster-${i}_cr.yaml
    sed -i "s/01/$i/g" kinds/kind-cluster-${i}_cr.yaml
    echo "  - kind-cluster-${i}" >> git-kind-set/values.yaml
    echo "  - kind-cluster-${i}" >> git-kind-set-2/values.yaml
    echo "  - kind-cluster-${i}" >> git-kind-set-4/values.yaml
done