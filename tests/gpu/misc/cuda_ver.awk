{
  container_name=$2
  if (container_name == "rocker_cuda11"){
    cmd = sprintf("docker exec %s /test-gpu.sh 11 >> /root/test-gpu.log", $1)
    system(cmd)
  }else if (container_name == "rocker_cuda10"){
    cmd = sprintf("docker exec %s /test-gpu.sh 10 >> /root/test-gpu.log", $1)
    system(cmd)
  }
}
