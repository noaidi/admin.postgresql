#!/bin/bash
echo -n "username: "
read username

echo -n "in file: "
read infile

psql -h localhost -U $username -f $infile
