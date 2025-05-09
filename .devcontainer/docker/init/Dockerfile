FROM liferay/jdk21:latest

COPY resources/ /

ENTRYPOINT ["tini", "-v", "--", "/usr/local/bin/liferay_bootstrap_entrypoint.sh"]

USER root

WORKDIR /workspace
