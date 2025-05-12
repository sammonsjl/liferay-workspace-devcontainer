FROM liferay/dxp:2025.q1.11-lts

USER root

ENV LD_LIBRARY_PATH=/lib64

RUN apt-get update -y && apt-get install -y mysql-client

ADD override /mnt/liferay

RUN chown -R liferay:liferay /mnt/liferay

USER liferay
