FROM redhat/ubi8

WORKDIR /app

COPY vika vika
RUN yum install -y jq


ENTRYPOINT [ "./vika" ]