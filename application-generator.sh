MIN_APPLICATION=4
MAX_APPLICATION=5

for ((i=$MIN_APPLICATION; i<=$MAX_APPLICATION; i++))
do
    cp -r list-app-3 list-app-$i
    find list-app-$i/ -type f | xargs sed -i "s/3/$i/g"
    echo "  list-app-$i:" >> appset/values.yaml
    echo "    repoURL: https://github.com/michaelkotelnikov/argocd-bench-list-generator.git" >> appset/values.yaml
    echo "    targetRevision: master" >> appset/values.yaml
    echo "    path: list-app-$i" >> appset/values.yaml
done