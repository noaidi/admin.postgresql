psql="psql postgres"
if [ `uname` = "Linux" ]; then
	psql="sudo -u postgres psql"
fi
