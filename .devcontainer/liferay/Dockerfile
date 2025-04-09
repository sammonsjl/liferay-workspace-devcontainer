FROM liferay/dxp:7.2.10-dxp-20-d5.0.58-20240221130358

USER root

ENV LD_LIBRARY_PATH=/lib64

RUN apt-get update -y && apt-get install -y mysql-client

ADD override /mnt/liferay

RUN chown -R liferay:liferay /mnt/liferay