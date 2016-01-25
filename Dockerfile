# https://hub.docker.com/_/centos/

FROM wiredobjects/centos7
MAINTAINER "refnode" <refnode@gmail.com>
ENV container docker
RUN yum -y update && yum -y install curl less git ansible libselinux-python policycoreutils-python

ADD files/hosts /etc/ansible/hosts
ADD files/ansible.cfg /etc/ansible/ansible.cfg

CMD ["/bin/bash"]

