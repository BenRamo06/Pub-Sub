# Create a topic
gcloud pubsub topics create <mytopic>
--message-retention-duration=<MESSAGE_RETENTION_DURATION>: Indicates the minimum duration to retain a message after it is published to the topic.
                                                           The minimum is 10 minutes and the maximum is 31 days. 
                                                           Valid values are strings of the form INTEGER[UNIT], where UNIT is one of "s", "m", "h", and "d" for seconds, minutes, hours, and days, respectively. If the unit is omitted, seconds is assumed.
--schema=<SCHEMA> : ID of the schema or fully qualified identifier for the schema.

# Delete a topic
gcloud pubsub topics delete <mytopic>

# Describe a topic
gcloud pubsub topics describe <mytopic>

# detach-subscription 
gcloud pubsub topics detach-subscription <mysubscription>

# Publish a message
gcloud pubsub topics publish <mytopic>
--message=<message>