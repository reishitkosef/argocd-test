for ((i=1; i<=40; i++))
do
    cp -r list-app-3 list-app-4-$i
    find list-app-4-$i/ -type f | xargs sed -i "s/3/$i/g"
    echo "  list-app-4-$i:" >> appset-4/values.yaml
    echo "    repoURL: https://github.com/michaelkotelnikov/argocd-bench-list-generator.git" >> appset-4/values.yaml
    echo "    targetRevision: master" >> appset-4/values.yaml
    echo "    path: list-app-4-$i" >> appset-4/values.yaml
done