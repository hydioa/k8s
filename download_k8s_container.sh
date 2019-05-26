images=(kube-proxy:v1.14.1 kube-scheduler:v1.14.1 kube-controller-manager:v1.14.1 kube-apiserver:v1.14.1 )
for imageName in ${images[@]} ; do
  docker pull registry.cn-hangzhou.aliyuncs.com/google_containers/$imageName
  docker tag  registry.cn-hangzhou.aliyuncs.com/google_containers/$imageName   k8s.gcr.io/$imageName
  docker rmi  registry.cn-hangzhou.aliyuncs.com/google_containers/$imageName
done
