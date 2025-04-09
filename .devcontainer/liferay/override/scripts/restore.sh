#!/bin/bash

restore() {
for f in /docker-entrypoint-initlr.d/*; do
	echo "$f"
	case "$f" in
	  *.gz) echo "$0: running $f"; gunzip -c "$f" | mysql -u "$LIFERAY_DATABASE_USER" -h database; echo ;;
	  *.tgz) echo "$0: running $f"; tar -xzf "$f" -C /opt/liferay/data; echo ;;
	esac
	echo
done

if [[ -f /docker-entrypoint-initlr.d/z-cleanup-data.sql ]]
then
	mysql -u "$LIFERAY_DATABASE_USER" -h database < /docker-entrypoint-initlr.d/z-cleanup-data.sql
fi

touch $LIFERAY_HOME/data/.backup-restored

cp /docker-entrypoint-initlr.d/license.xml /opt/liferay/deploy/
}

if [[ ! -f "$LIFERAY_HOME/data/.backup-restored" ]]; then
restore
fi