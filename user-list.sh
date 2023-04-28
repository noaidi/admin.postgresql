#!/bin/bash
. .psql.sh
$psql -c "\du+"
