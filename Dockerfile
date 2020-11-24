FROM centos:8

ENV container docker

#enable systemd integration
RUN (cd /lib/systemd/system/sysinit.target.wants/; for i in *; do [ $i == \
systemd-tmpfiles-setup.service ] || rm -f $i; done); \
rm -f /lib/systemd/system/multi-user.target.wants/*;\
rm -f /etc/systemd/system/*.wants/*;\
rm -f /lib/systemd/system/local-fs.target.wants/*; \
rm -f /lib/systemd/system/sockets.target.wants/*udev*; \
rm -f /lib/systemd/system/sockets.target.wants/*initctl*; \
rm -f /lib/systemd/system/basic.target.wants/*;\
rm -f /lib/systemd/system/anaconda.target.wants/*;
VOLUME [ "/sys/fs/cgroup" ]
CMD ["/usr/sbin/init"]

## update sources list
RUN yum -y update
RUN yum -y clean all

## install basic apps, one per line for better caching
RUN yum -qy install yum-utils
RUN yum -qy install git
RUN yum -qy install nano
RUN yum -qy install tmux
RUN yum -qy install wget
RUN yum -qy install sudo
RUN yum -qy install curl
RUN yum -qy install openssh-server
RUN yum -qy install vim
RUN yum -qy install httpd

## cleanup
RUN yum -qy autoremove

## Install Language Packs to UTF-8
RUN yum -qy install glibc-langpack-en

## Set Default Language to  English – UNITED STATES OF AMERICA (US) using the UTF-8 encoding
ENV LANG en_US.utf8
