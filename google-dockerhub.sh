#!/bin/bash
images=(etcd:3.2.24 kube-controller-manager:v1.13.0 kube-apiserver:v1.13.0 kube-scheduler:v1.13.0 kube-proxy:v1.13.0 pause-amd64:3.1 coredns:1.2.6)
for image in ${images[@]} ; do
  docker pull fernandox/$image
  docker tag fernandox/$image gcr.io/google_containers/$image
  #docker rmi fernandox/$image
done

