FROM amazonlinux:latest
MAINTAINER Chris Cooke

ADD requirements.txt /app/requirements.txt
WORKDIR /app

RUN yum update -y && yum -y install git \
    python37 \
    python37-pip \
    zip \
    && yum clean all
RUN pip3 install -r requirements.txt

ADD . /app

# Define default command.
CMD ["/bin/bash"]