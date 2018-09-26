#!/bin/bash
images=(kube-proxy-amd64:v1.11.1 kube-scheduler-amd64:v1.11.1 kube-controller-manager-amd64:v1.9.0 kube-apiserver-amd64:v1.11.1 etcd-amd64:3.1.17 pause-amd64:3.0 kubernetes-dashboard-amd64:v1.8.3 k8s-dns-sidecar-amd64:1.14.10 k8s-dns-kube-dns-amd64:1.14.10
k8s-dns-dnsmasq-nanny-amd64:1.14.10)
for image in ${images[@]} ; do
  docker pull fernandox/$image
  docker tag fernandox/$image gcr.io/google_containers/$image
  docker rmi fernandox/$image
done

