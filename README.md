
## Elasticsearch Dockerfile with plugins for web development

This repository contains **Dockerfile** of [Elasticsearch](http://www.elasticsearch.org/) for [Docker](https://www.docker.com/)

### Base Docker Image

[dockerfile/elasticsearch](https://github.com/dockerfile/elasticsearch)


### Installation

* Install [Docker](https://www.docker.com/).
* Build the image, two choices :
  * Clone the repo and run ```docker build -t="$USER/elasticsearch" .```
  * Create the image from the github repo ```docker build -t="$USER/elasticsearch" github.com/mroca/docker-elasticsearch-dev```
* Create a mountable data directory `<data-dir>` on the host.


### Usage

    # Run in detached mode
    docker run -d -p 9200:9200 -p 9300:9300 -v <data-dir>:/data $USER/elasticsearch
    
    # Run and get a shell
    docker run --rm -i -t -p 9200:9200 -p 9300:9300 -v <data-dir>:/data $USER/elasticsearch bash

After few seconds, open [http://localhost:9200](http://localhost:9200) to see the result.

### Plugins

This image contains the following plugins :
* [elasticsearch-head](http://mobz.github.io/elasticsearch-head/)
  * [http://localhost:9200/_plugin/head/](http://localhost:9200/_plugin/head/)
* [marvel](http://www.elasticsearch.org/overview/marvel/)
  * [http://localhost:9200/_plugin/marvel/](http://localhost:9200/_plugin/marvel/)
  * [http://localhost:9200/_plugin/marvel/](http://localhost:9200/_plugin/marvel/sense/)
