# frontend-nginx

A Nginx Server for Frontend

## Feature

- 1、支持gzip
- 2、支持brotli
- 3、支持history路由

## Build

基础镜像为官方**nginx:mainline-alpine**，并且引入了`brotli`模块；

打包镜像时，进行如下操作：

### 方法一：

- 1、克隆官方仓库，https://github.com/nginxinc/docker-nginx/tree/master，然后进入到`modules`目录，按照[官方指引](https://github.com/nginxinc/docker-nginx/blob/master/modules/README.md)进行；

- 2、执行`docker build --build-arg ENABLED_MODULES="brotli" -f Dockerfile.alpine -t nginx-with-brotli .`命令；

- 3、获取**nginx-with-brotli**基础镜像后，以该镜像为上游镜像，继续打包新的镜像，执行

```
docker build -f Dockerfile -t frontend-nginx .
```

### 方法二：

- 1、执行`update_nginx_docker.sh`脚本，更新完当前目录下的**Dockerfile.alpine**文件

- 2、执行`build_nginx_docker.sh`命令；

- 3、获取**nginx-with-brotli**基础镜像后，以该镜像为上游镜像，继续打包新的镜像，执行

```
docker build -f Dockerfile -t frontend-nginx .
```
