FROM centos:7

RUN yum -y update \
    && yum install -y \
      ansible \
    	java-1.8.0-openjdk-devel \
    	which \
    	openssh \
    	openssh-clients \
    	rsync \
    	ruby \
    && yum clean all \
    && gem install edn
