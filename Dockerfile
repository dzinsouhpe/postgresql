FROM dzinsouhpe/centos:7.8.2003
LABEL maintainer="dietrich.zinsou@hpe.com"

RUN yum install -y https://download.postgresql.org/pub/repos/yum/reporpms/EL-7-x86_64/pgdg-redhat-repo-latest.noarch.rpm && \
    yum install -y postgresql13-server

COPY appconfig.tgz /opt/configscripts/appconfig.tgz

ENTRYPOINT ["sleep", "infinity"]
