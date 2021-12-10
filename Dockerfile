FROM centos:8
LABEL maintainer="camechis@gmail.com"

RUN yum install -y \
	ruby-devel \
	gcc \
	make \
	ruby \
	rpm-build \
	rpm-sign && yum clean all

RUN gem install fpm

VOLUME [ "/tmp/fpm" ]
WORKDIR /tmp/fpm

ENTRYPOINT [ "/usr/local/bin/fpm" ]
CMD [ "--help" ]