#creates one or more Cloud Pub/Sub snapshots
gcloud pubsub snapshots create snapshot <SNAPSHOT> 
--subscription=<SUBSCRIPTION>


# deletes one or more Cloud Pub/Sub snapshots
gcloud pubsub snapshots delete snapshot <SNAPSHOT>


# describes a Cloud Pub/Sub snapshot 
gcloud pubsub snapshots describe snapshot <SNAPSHOT>