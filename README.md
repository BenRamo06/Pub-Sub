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


Publisher-subscriber relationships can be one-to-many (fan-out), many-to-one (fan-in), and many-to-many, as shown in the following diagram:

<p align="center">
  <img src="https://github.com/BenRamo06/Pub-Sub/blob/master/images/Publisher-Subscription.png">
</p>

The following diagram illustrates how a message passes from a publisher to a subscribe


<p align="center">
  <img src="https://github.com/BenRamo06/Pub-Sub/blob/master/images/Steps_PubSub.png">
</p>


### Subscriptions

To receive messages published to a topic, you must create a subscription to that topic. Only messages published to the topic after the subscription is created are available to subscriber applications. The subscription connects the topic to a subscriber application that receives and processes messages published to the topic. A topic can have multiple subscriptions, but a given subscription belongs to a single topic.

#### Types of subscriptions
A subscription can use either the pull or push mechanism for message delivery. You can change or configure the mechanism at any time.

* Pull subscription

  In pull delivery, your subscriber application initiates requests to the Pub/Sub server to retrieve messages.

  1. The subscribing application explicitly calls the pull method, which requests messages for delivery.   
  2. The Pub/Sub server responds with the message (or an error if the queue is empty) , and an ack ID.   
  3. The subscriber explicitly calls the acknowledge method, using the returned ack ID to acknowledge receipt.   

<p align="center">
  <img src="https://github.com/BenRamo06/Pub-Sub/blob/master/images/Pull_Subs.png">
</p>

* Push subscription

  In push delivery, Pub/Sub initiates requests to your subscriber application to deliver messages.    

  1. The Pub/Sub server sends each message as an HTTPS request to the subscriber application at a pre-configured endpoint.   
  2. The endpoint acknowledges the message by returning an HTTP success status code. A non-success response indicates that the message should be resent.   

  <p align="center">
  <img src="https://github.com/BenRamo06/Pub-Sub/blob/master/images/Push_Subs.png">
</p>