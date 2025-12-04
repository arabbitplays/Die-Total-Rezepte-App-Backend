#!/usr/bin/env bash
echo "Creating mongo users..."

mongosh --authenticationDatabase admin --host localhost -u ${MONGO_INITDB_ROOT_USERNAME} -p ${MONGO_INITDB_ROOT_PASSWORD} dietotalerezepteapp --eval "db.createUser({user: '${MONGO_USER_USERNAME}', pwd: '${MONGO_USER_PASSWORD}', roles: [{role: 'readWrite', db: 'dietotalerezepteapp'}]});"

echo "Mongo users created."
