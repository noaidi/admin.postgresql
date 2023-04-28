#!/bin/bash
echo -n "db name: "
read dbname

echo -n "out file: "
read outfile

pg_dump --no-owner --clean -h localhost -d $dbname -U $dbname -f $outfile
