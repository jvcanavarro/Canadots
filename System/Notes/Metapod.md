[[Tools]]

### Description

Metapod is a **Clojure** service with a **Datomic** database that stores metadata about our data, including when any given dataset was computed, where it was stored on **S3** (and with which partitions), the schema, which grouping "transaction" it is part of, etc.

Metapod is a normal service deployed in sa-east-1 (production) in the global prototype (as opposed to in a specific shard, for example). That means that after a pull request is merged to master, it will build and then go to staging and then prod. You can check what version of metapod is deployed in production using `nu ser versions metapod`, and you can see whether the service is healthy via `nu ser curl GET global metapod /ops/health`.

Metapod also produces Kafka messages when a dataset is committed (via a proxy service called **Veiga**), allowing downstream services to use them, e.g., Monsoon subscribes to such events to load the Parquet datasets into Google Big Query.

Source: https://nubank.atlassian.net/wiki/spaces/DI/pages/263311460265/Metapod