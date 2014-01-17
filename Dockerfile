FROM ubuntu
MAINTAINER Shriram Sharma "shriram.sharma22@gmail.com"

RUN echo deb http://archive.ubuntu.com/ubuntu precise universe >> /etc/apt/sources.list
RUN apt-get update
RUN apt-get install -q -y openjdk-6-jre
RUN apt-get install -q -y openjdk-6-jdk
RUN apt-get install -q -y vim
RUN apt-get install -q -y openssh-server
RUN apt-get install -q -y build-essential
RUN echo "deb http://us.archive.ubuntu.com/ubuntu/ precise-updates main restricted" | tee -a /etc/apt/sources.list.d/precise-updates.list
RUN apt-get update
RUN apt-get install -q -y python2.7-dev
RUN apt-get install -q -y libcppunit-dev
RUN apt-get install -q -y libunwind7-dev
RUN apt-get install -q -y libcurl4-gnutls-dev
RUN apt-get install -q -y libsasl2-dev
RUN useradd jenkins
RUN echo 'jenkins:docker' | chpasswd
RUN mkdir /var/run/sshd
RUN echo 'root:docker' | chpasswd
RUN apt-get install -q -y wget
RUN wget www.motorlogy.com/apache/mesos/0.15.0/mesos-0.15.0.tar.gz -P /home/jenkins
RUN tar xf /home/jenkins/mesos-0.15.0.tar.gz

EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]
