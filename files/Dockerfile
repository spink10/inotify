# FROM centos:centos7.9.2009
FROM spink10/inotify:1.5
LABEL Name=inotify Version=0.0.1
ADD inotify.sh /opt/scripts
# RUN mkdir -p /etc/scripts/
# RUN yum install -y gcc make wget
# RUN wget --no-check-certificate http://jensd.be/download/inotify-tools-3.14.tar.gz
# RUN tar -xzf inotify-tools-3.14.tar.gz 
# RUN /inotify-tools-3.14/configure
# RUN /inotify-tools-3.14/make 
# RUN /inotify-tools-3.14/make install
#yum install -y inotifywait
ENTRYPOINT ["bash"]
# CMD ["google.com"]

