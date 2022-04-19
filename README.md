# Pub-Sub


### Concept

Pub/Sub allows services to communicate asynchronously, with latencies on the order of 100 milliseconds.     
Pub/Sub is used for streaming analytics and data integration pipelines to ingest and distribute data.       
Pub/Sub enables you to create systems of event producers and consumers, called publishers and subscribers.

Types:

*   Pub/Sub service. This messaging service is the default choice for most users and applications. It offers the highest reliability and largest set of integrations, along with automatic capacity management. Pub/Sub guarantees synchronous replication of all data to at least two zones and best-effort replication to a third additional zone.

*   Pub/Sub Lite service. A separate but similar messaging service built for lower cost. It offers lower reliability compared to Pub/Sub. It offers either zonal or regional topic storage. Zonal Lite topics are stored in only one zone. Regional Lite topics replicate data to a second zone asynchronously.


Core:

*   Topic. A named resource to which messages are sent by publishers.
*   Subscription. A named resource representing the stream of messages from a single, specific topic, to be delivered to the subscribing application. For more details about subscriptions and message delivery semantics, see the Subscriber Guide.
*   Message. The combination of data and (optional) attributes that a publisher sends to a topic and is eventually delivered to subscribers.
*   Message attribute. A key-value pair that a publisher can define for a message. For example, key iana.org/language_tag and value en could be added to messages to mark them as readable by an English-speaking subscriber.
*   Publisher. An application that creates and sends messages to a topic(s).
*   Subscriber. An application with a subscription to a topic(s) to receive messages from it.
*   Acknowledgement (or "ack"). A signal sent by a subscriber to Pub/Sub after it has received a message successfully. Acked messages are removed from the subscription's message queue.
*   Push and pull. The two message delivery methods. A subscriber receives messages either by Pub/Sub pushing them to the subscriber's chosen endpoint, or by the subscriber pulling them from the service.

### Topic



*   --message-retention-duration=<MESSAGE_RETENTION_DURATION>: Indicates the minimum duration to retain a message after it is published to the topic.The minimum is 10 minutes and the maximum is 31 days. Valid values are strings of the form INTEGER[UNIT], where UNIT is one of "s", "m", "h", and "d" for seconds, minutes, hours, and days, respectively. If the unit is omitted, seconds is assumed.
*   --schema=<SCHEMA> : ID of the schema or fully qualified identifier for the schema.

### Publisher



### Subscribers


Publisher-subscriber relationships can be one-to-many (fan-out), many-to-one (fan-in), and many-to-many, as shown in the following diagram:

<p align="center">
  <img src="https://github.com/BenRamo06/Pub-Sub/blob/master/images/Publisher-Subscription.png">
</p>

The following diagram illustrates how a message passes from a publisher to a subscribe


<p align="center">
  <img src="https://github.com/BenRamo06/Pub-Sub/blob/master/images/Steps_PubSub.png">
</p>