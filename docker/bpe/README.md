# Codex-Processes-AP2 (BPE part)

Docker files for the BPE part of this project.

## Configuration

|EnvVar|Description|Default|
|------|-----------|-------|
|DB_URL|JDBC compliant database URL for a Postgres database. Has to be in the form of `jdbc:postgresql://<HOST>[:<PORT>]/<DATABASE>`||
|DB_LIQUIBASE_USER| |`liquibase_user`|
|DB_LIQUIBASE_USER_PASSWORD| ||
|DB_SERVER_USER_GROUP| |`bpe_users`|
|DB_SERVER_USER| |`bpe_server_user`|
|DB_SERVER_USER_PASSWORD| ||
|DB_CAMUNDA_USER_GROUP| |`camunda_users`|
|DB_CAMUNDA_USER| |`camunda_server_user`|
|DB_CAMUNDA_USER_PASSWORD| ||
|ORGANIZATION_IDENTIFIER| Identifier of the organization that this container is deployed in. Must not contain whitespace. ||
|WEBSERVICE_BASE_URL| Base URL for reaching the the FHIR part that belongs to this BPE. ||
|WEBSERVICE_P12_CERTIFICATE| Certificate bundle in the PKCS12 format used for webservice requests. ||
|WEBSERVICE_P12_CERTIFICATE_PASSWORD| Password for the certificate bundle. ||
|WEBSERVICE_READ_TIMEOUT| Read timeout in `ms` when requesting the local webservice. |`20000`|
|WEBSERVICE_CONNECT_TIMEOUT| Connection timeout in `ms` when connecting to the local webservice. |`2000`|
|WEBSERVICE_REMOTE_READ_TIMEOUT| Read timeout in `ms` when requesting a remote webservice. |`20000`|
|WEBSERVICE_REMOTE_CONNECT_TIMEOUT| Connection timeout in `ms` when connecting to a remote webservice. |`2000`|
|WEBSOCKET_URL| Websocket compliant URL for reaching the FHIR part that belongs to this BPE. ||
|WEBSOCKET_P12_CERTIFICATE| Certificate bundle in the PKCS12 format used for websocket requests. ||
|WEBSOCKET_P12_CERTIFICATE_PASSWORD| Password for the certificate bundle. ||
|PROCESS_EVALUATION_STRATEGY| Specifies whether CQL or Structured Queries shall be evaluated. Possible values are `cql` and `structured-query`. ||
|PROCESS_EVALUATION_OBFUSCATE| Specifies whether evaluation results shall be obfuscated. Possible values are `true` and `false`.| `true` |
|PROCESS_STORE_URL| URL for reaching a FHIR store where all process related information are stored. Needs to be set if the evaluation strategy is set to `cql`. ||
|FLARE_BASE_URL| Base URL for reaching a Flare instance. Needs to be set if the evaluation strategy is set to `structured-query`. ||
|FLARE_CONNECT_TIMEOUT| Connection timeout in `ms` when connecting to a Flare instance. |`2000`|
