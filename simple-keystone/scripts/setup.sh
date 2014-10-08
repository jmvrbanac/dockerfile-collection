#!/bin/bash

ADMIN_PASSWORD="password"
export OS_SERVICE_TOKEN="ADMIN_TOKEN"
export OS_SERVICE_ENDPOINT="http://localhost:35357/v2.0"

sed -i "s/\#admin_token.*/admin_token=ADMIN_TOKEN/" /etc/keystone/keystone.conf

get_id () {
    echo `$@ | awk '/ id / { print $4 }'`
}

start_keystone() {
    start-stop-daemon --start --chuid keystone --chdir /var/lib/keystone --name keystone --exec /usr/bin/keystone-all &

    # Give us a couple seconds for Keystone to start
    sleep 5
}

stop_keystone() {
    pkill keystone-all
}

# Temporarally start Keystone for us to configure
start_keystone

ADMIN_TENANT=$(get_id keystone tenant-create --name=admin)
ADMIN_ROLE=$(get_id keystone role-create --name=admin)
ADMIN_USER=$(get_id keystone user-create --name=admin --pass="$ADMIN_PASSWORD" --email=admin@domain.com)

# Add Roles to Users in Tenants
keystone user-role-add --user $ADMIN_USER --role $ADMIN_ROLE --tenant-id $ADMIN_TENANT

# Finish and close down Keystone
stop_keystone
