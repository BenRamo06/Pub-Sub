gcloud pubsub schemas create <SCHEMA_ID> 
--type=<AVRO or PROTOCOL_BUFFER> 
--definition=<SCHEMA_DEFINITION, str>



gcloud pubsub schemas describe <SCHEMA_ID>


gcloud pubsub schemas list


gcloud pubsub schemas delete <SCHEMA_ID>



gcloud pubsub schemas validate-message 
--message-encoding=<JSON or BINARY.>
--message=<MESSAGE>
--schema-name=<SCHEMA_ID>




