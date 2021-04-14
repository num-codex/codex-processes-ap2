#!/usr/bin/env bash

CONFIG_FILE=/opt/bpe/conf/config.properties

sed -i "s#<DB_URL>#${DB_URL}#" $CONFIG_FILE
sed -i "s#<DB_LIQUIBASE_USER>#${DB_LIQUIBASE_USER}#" $CONFIG_FILE
sed -i "s#<DB_LIQUIBASE_USER_PASSWORD>#${DB_LIQUIBASE_USER_PASSWORD}#" $CONFIG_FILE
sed -i "s#<DB_SERVER_USER_GROUP>#${DB_SERVER_USER_GROUP}#" $CONFIG_FILE
sed -i "s#<DB_SERVER_USER>#${DB_SERVER_USER}#" $CONFIG_FILE
sed -i "s#<DB_SERVER_USER_PASSWORD>#${DB_SERVER_USER_PASSWORD}#" $CONFIG_FILE
sed -i "s#<DB_CAMUNDA_USER_GROUP>#${DB_CAMUNDA_USER_GROUP}#" $CONFIG_FILE
sed -i "s#<DB_CAMUNDA_USER>#${DB_CAMUNDA_USER}#" $CONFIG_FILE
sed -i "s#<DB_CAMUNDA_USER_PASSWORD>#${DB_CAMUNDA_USER_PASSWORD}#" $CONFIG_FILE
sed -i "s#<ORGANIZATION_IDENTIFIER>#${ORGANIZATION_IDENTIFIER}#" $CONFIG_FILE
sed -i "s#<WEBSERVICE_BASE_URL>#${WEBSERVICE_BASE_URL}#" $CONFIG_FILE
sed -i "s#<WEBSERVICE_P12_CERTIFICATE>#${WEBSERVICE_P12_CERTIFICATE}#" $CONFIG_FILE
sed -i "s#<WEBSERVICE_P12_CERTIFICATE_PASSWORD>#${WEBSERVICE_P12_CERTIFICATE_PASSWORD}#" $CONFIG_FILE
sed -i "s#<WEBSERVICE_READ_TIMEOUT>#${WEBSERVICE_READ_TIMEOUT}#" $CONFIG_FILE
sed -i "s#<WEBSERVICE_CONNECT_TIMEOUT>#${WEBSERVICE_CONNECT_TIMEOUT}#" $CONFIG_FILE
sed -i "s#<WEBSERVICE_REMOTE_READ_TIMEOUT>#${WEBSERVICE_REMOTE_READ_TIMEOUT}#" $CONFIG_FILE
sed -i "s#<WEBSERVICE_REMOTE_CONNECT_TIMEOUT>#${WEBSERVICE_REMOTE_CONNECT_TIMEOUT}#" $CONFIG_FILE
sed -i "s#<WEBSOCKET_URL>#${WEBSOCKET_URL}#" $CONFIG_FILE
sed -i "s#<WEBSOCKET_P12_CERTIFICATE>#${WEBSOCKET_P12_CERTIFICATE}#" $CONFIG_FILE
sed -i "s#<WEBSOCKET_P12_CERTIFICATE_PASSWORD>#${WEBSOCKET_P12_CERTIFICATE_PASSWORD}#" $CONFIG_FILE
sed -i "s#<PROCESS_STORE_URL>#${PROCESS_STORE_URL}#" $CONFIG_FILE

# Invoke base image start script
./dsf_bpe_start.sh