FROM centos:7
RUN mkdir -p /opt
WORKDIR /opt

ENTRYPOINT ["bash", "echo", "make image success"]
