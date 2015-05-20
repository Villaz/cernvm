FROM centos:6
MAINTAINER luis.villazon.esteban@cern.ch

RUN yum -y update
RUN yum -y install wget

RUN wget http://cern.ch/lfield/hn/condor-8.0.3-174914.rhel6.3.x86_64.rpm; yum -y localinstall condor-8.0.3-174914.rhel6.3.x86_64.rpm ; rm -rf condor-8.0.3-174914.rhel6.3.x86_64.rpm
RUN wget http://cvmrepo.web.cern.ch/cvmrepo/yum/cernvm.repo -O /etc/yum.repos.d/cernvm.repo
RUN wget http://cvmrepo.web.cern.ch/cvmrepo/yum/RPM-GPG-KEY-CernVM -O /etc/pki/rpm-gpg/RPM-GPG-KEY-CernVM

ADD slc6-extras.repo /etc/yum.repos.d/slc6-extras.repo

RUN yum -y update
RUN yum -y install http://linuxsoft.cern.ch/wlcg/sl6/x86_64/HEP_OSlibs_SL6-1.0.16-0.el6.x86_64.rpm
RUN yum -y install epel-release
RUN yum -y install ganglia-gmond
RUN yum -y install xrootd-client
RUN yum -y install redhat-lsb-core
RUN yum -y install glibmm24
RUN yum -y install openssl098e
RUN yum -y install xrootd-fuse
RUN yum -y install castor-devel
RUN yum -y install cvmfs
RUN yum -y install git


RUN rpm --import http://emisoft.web.cern.ch/emisoft/dist/EMI/3/RPM-GPG-KEY-emi
RUN yum --nogpgcheck -y install yum-priorities yum-protectbase
RUN wget http://repository.egi.eu/sw/production/cas/1/current/repo-files/egi-trustanchors.repo -O /etc/yum.repos.d/egi-trustanchors.repo

RUN wget https://bootstrap.pypa.io/get-pip.py
RUN python get-pip.py
RUN pip install requests

RUN yum install voms-clients3

VOLUME /cvmfs/
VOLUME /scratch/
VOLUME /usr/script/
CMD /usr/script/script.sh
