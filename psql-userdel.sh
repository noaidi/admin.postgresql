#!/bin/bash
echo -n "username: "
read username

. .psql.sh
$psql -c "DROP DATABASE \"${username}\";"
$psql -c "DROP USER \"${username}\";"
