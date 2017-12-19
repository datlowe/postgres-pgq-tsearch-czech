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

## Test it


```sql
SELECT to_tsvector('czech', 'psi a psů a lidi a lidí a ruce a vody a Měla')
```

## Upgrading from `docker-pgq` image


```sql
  create text search dictionary czech_ispell
    (template=ispell, dictfile=czech, afffile=czech, stopwords=czech);
    
  create text search dictionary czech_snowball
    (template=snowball, language=czech, stopwords=czech);
    
  create text search configuration czech (copy=english);
  alter text search configuration czech
    alter mapping for word, asciiword with czech_ispell, czech_snowball;
```

## See also

* https://hub.docker.com/r/dedekj/postgres-pgq-tsearch-czech/
* https://postgres.cz/wiki/Instalace_PostgreSQL#Instalace_Fulltextu
* https://github.com/jtjeferreira/docker-pgq
