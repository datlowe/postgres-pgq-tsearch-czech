FROM jtjeferreira/docker-pgq:9.5

MAINTAINER Jan Dedek <jan.dedek@datlowe.cz>

RUN apt-get update && apt-get install -y curl

RUN curl -L http://postgres.cz/data/czech.tar.gz \
  | tar -xzC /tmp/ \
  && mv /tmp/fulltext_dicts/czech.* /usr/share/postgresql/9.5/tsearch_data/ \
  && rm -rf /tmp/fulltext_dicts/ 

ADD czech.stop /usr/share/postgresql/9.5/tsearch_data/

ADD add-tsearch-czech.sh docker-entrypoint-initdb.d/
