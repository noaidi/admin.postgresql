#!/bin/bash
echo -n "username: "
read username

echo -n "password: "
read passwd

. .psql.sh
$psql -c "CREATE USER \"${username}\" WITH ENCRYPTED PASSWORD '${passwd}';" && \
$psql -c "CREATE DATABASE \"${username}\" WITH ENCODING='UTF8' OWNER='${username}';"
