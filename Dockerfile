FROM centos

USER root

RUN yum -y update; yum clean all
RUN yum -y install epel-release; yum clean all
RUN yum -y install python-pip; yum clean all
RUN yum -y install wireshark; yum clean all
RUN yum -y install git; yum clean all

RUN pip install --upgrade pip
RUN pip install pyshark psycopg2 dpkt