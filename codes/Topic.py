def list_topics(project_id: str) -> None:
    """Lists all Pub/Sub topics in the given project."""
    from google.cloud import pubsub_v1

    # project_id = "your-project-id"

    publisher = pubsub_v1.PublisherClient()
    project_path = f"projects/{project_id}"

    for topic in publisher.list_topics(request={"project": project_path}):
        print(topic)


def create_topic(project_id: str, topic_id: str) -> None:
    """Create a new Pub/Sub topic."""
    from google.cloud import pubsub_v1

    # project_id = "your-project-id"
    # topic_id = "your-topic-id"

    publisher = pubsub_v1.PublisherClient()
    topic_path = publisher.topic_path(project_id, topic_id)

    topic = publisher.create_topic(request={"name": topic_path})

    print(f"Created topic: {topic.name}")
    


def delete_topic(project_id: str, topic_id: str) -> None:
    """Deletes an existing Pub/Sub topic."""
    from google.cloud import pubsub_v1

    # project_id = "your-project-id"
    # topic_id = "your-topic-id"

    publisher = pubsub_v1.PublisherClient()
    topic_path = publisher.topic_path(project_id, topic_id)

    publisher.delete_topic(request={"topic": topic_path})

    print(f"Topic deleted: {topic_path}")