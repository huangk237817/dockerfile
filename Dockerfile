#version: 0.0.1
FROM centos:latest
RUN rpm -Uvh http://nginx.org/packages/centos/7/noarch/RPMS/nginx-release-centos-7-0.el7.ngx.noarch.rpm && \ 
yum install -y make && \
yum install -y nginx && \
echo "hi, i am in your container" >/usr/share/nginx/html/index.html
EXPOSE 80
