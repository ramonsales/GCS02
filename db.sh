sudo apt-get install -y postgresql
sudo su - postgres -c "psql -f /vagrant/db-config.sql"
sudo su - postgres -c 'echo "host all all 192.168.1.10/24 trust" >> /etc/postgresql/9.3/main/pg_hba.conf'
sudo su - postgres -c "echo listen_addresses=\\'*\\' >> /etc/postgresql/9.3/main/postgresql.conf"
sudo service postgresql restart
