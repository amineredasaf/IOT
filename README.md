# IOT


dev/log/ for this project [Inception of things]

- Watch and read articles:
    - Notes:
        -   In the high level explantions we have pods, cluster, nodes, services.
            pods are the smallest compenent in the k8s, but also the house holder for conatiners/applications
            conatiners conatiner the app codebase and the package/library all and only what the app needed to be runing and portable.
            the node is the machine can be phiscaly or virtual and conatiner zero or many pods.
            and for the cluster it containe zero or many nodes
            for the service its the policy to how and what to access those pods and applications
            for now that i can recall for this moment
        - commends that i saw in the videos and articales and i want to test and evenatly i did:
            - kubectl cluster-info [ worked fine and the result below]
                - ```Kubernetes control plane is running at https://127.0.0.1:6443```
                - ```CoreDNS is running at https://127.0.0.1:6443/api/v1/namespaces/kube-system/services/kube-dns:dns/proxy```
                - ```Metrics-server is running at https://127.0.0.1:6443/api/v1/namespaces/kube-system/services/https:metrics-server:https/proxy```
                - ```To further debug and diagnose cluster problems, use 'kubectl cluster-info dump'.```