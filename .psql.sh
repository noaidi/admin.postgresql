psql="psql"
if [ `uname` = "Linux" ]; then
	psql="sudo -u postgres psql"
fi