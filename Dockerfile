FROM dockerfile/elasticsearch

# Override elasticsearch.yml config
ADD config/elasticsearch.yml /elasticsearch/config/elasticsearch.yml

RUN \
  cd /elasticsearch && \
  /elasticsearch/bin/plugin install mobz/elasticsearch-head && \
  /elasticsearch/bin/plugin install elasticsearch/marvel/latest
