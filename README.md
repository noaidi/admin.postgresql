# Install `postgresql`

## on MacOS
```sh
brew install postgresql
brew services start postgresql
createdb
```
## on Ubuntu
```sh
sudo apt install postgresql
```

# Management
## on MacOS
```sh
brew services info postgresql
brew services start postgresql
brew services stop postgresql
brew services restart postgresql
```
## on Ubuntu
```sh
sudo systemctl status postgresql
sudo systemctl start postgresql
sudo systemctl stop postgresql
sudo systemctl restart postgresql
```

# Connect
## on MacOS
```sh
psql # super user
```
```sh
psql -U USERNAME
```
## on Ubuntu
```sh
sudo -u postgres psql # super user
```
```sh
psql -h localhost -U USERNAME
```

# List users
## on MacOS
```sh
psql -c "SELECT * FROM pg_shadow"
# or
psql -c "\du+"
```
## on Ubuntu
```sh
sudo -u postgres psql -c "SELECT * FROM pg_shadow"
# or
sudo -u postgres psql -c "\du+"
```

# Dump
```sh
pg_dump -h localhost -d DBNAME -U USERNAME -f BACKUP.sql
```

# Restore
```sh
psql -h localhost -U USERNAME -f BACKUP.sql
```