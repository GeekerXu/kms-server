# kms-server
kms-server.dockerfile 基于alpine

1.docker 安装 

curl -sSL https://get.docker.com/ | sh 

2.创建dockerfile 目录 并进入目录 

mkdir -p /home/docker/dockerfile-kms-server && cd /home/docker/dockerfile-kms-server

3.下载dockerfile 文件

wget https://github.com/GeekerXu/kms-server/blob/master/dockerfile

4.创建镜像

docker build -t geekerxu/kms-server:latest

5.启动容器

docker run -d -p 1688:1688 --restart=always --name kms-server geekerxu/kms-server
