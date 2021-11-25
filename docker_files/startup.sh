#!/bin/bash

CMD="/usr/local/bin/docker-entrypoint.sh mysqld"

if  [ -n "$GALERA_NEW_CLUSTER" ] && [ ! -e "/var/lib/mysql/mysql" ];  then
    CMD="$CMD --wsrep-new-cluster"
elif [ ! -e "/var/lib/mysql/gvwstate.dat" ] && [ -e "/var/lib/mysql/grastate.dat" ] &&  $(grep -q "safe_to_bootstrap: 1" /var/lib/mysql/grastate.dat) ; then
    CMD="$CMD --wsrep-new-cluster"
fi

exec $CMD
