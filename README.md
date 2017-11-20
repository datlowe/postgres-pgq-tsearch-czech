## About

`jtjeferreira/docker-pgq` docker with Czech full-text search dictionaries pulled from https://postgres.cz/data/czech.tar.gz.

## Supported tags

* `9.5`

    Based on `jtjeferreira/docker-pgq:9.5`.

## How to

```bash

docker build -t datlowe/postgres-pgq-tsearch-czech:9.5 .

docker run --name postgres -p 5432:5432 -e POSTGRES_PASSWORD=datlowe -e POSTGRES_USER=datlowe datlowe/postgres-pgq-tsearch-czech:9.5

```
