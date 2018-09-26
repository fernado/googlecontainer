#!/bin/bash
images=(proxy:v1.11.1 scheduler:v1.11.1 controller-manager:v1.9.0 apiserver:v1.11.1 
etcd:3.1.17 pause:3.0 dashboard:v1.8.3 dns-sidecar:1.14.10 dns-kube:1.14.10
dns-dnsmasq-nanny:1.14.10)
for image in ${images[@]} ; do
  docker pull fernandox/$image
  docker tag fernandox/$image gcr.io/google_containers/$image
  docker rmi fernandox/$image
done

