#Acknowledges one or more messages on the specified subscription.

#Creates one or more Cloud Pub/Sub subscriptions.

gcloud pubsub subscriptions create subscription <SUBSCRIPTION> --topic=<TOPIC> 

#Deletes one or more Cloud Pub/Sub subscriptions.

gcloud pubsub subscriptions delete <SUBSCRIPTION>

#List a Cloud Pub/Sub subscription.

gcloud pubsub subscriptions list 


#Describes a Cloud Pub/Sub subscription.

gcloud pubsub subscriptions describe <SUBSCRIPTION>


# Receive message

gcloud pubsub subscriptions pull <SUBSCRIPTION> --auto-ack


#Resets a subscription's backlog to a point in time or to a given snapshot.

gcloud pubsub subscriptions seek <SUBSCRIPTION> 
--snapshot=SNAPSHOT     : The name of the snapshot. The snapshot's topic must be the same as that of the subscription.
--time=TIME : The time to seek to. Messages in the subscription that were published before this time are marked as acknowledged, and messages retained in the subscription that were published after this time are marked as unacknowledged. 



