# docker-kibana
Docker image to run kibana for Elasticsearch.

## ENV
$ES_URL      The URL of the Elasticsearch instance(master.node) to use for all your queries. (e.g. "http://url:9200")

## Build
Run the following command.
```bash
$ docker build -t local/docker-kibana  .
```

## Run with ENV
In example, you can run start with simple docker by using this command
```
$ docker run -d --name kibana -p 5601:5601 -e ES_URL=http://url:9200 local/docker-kibana
```

## Output: log
```
{"type":"log","@timestamp":"2017-08-07T07:30:40Z","tags":["status","plugin:kibana@5.5.1","info"],"pid":1,"state":"green","messa
ge":"Status changed from uninitialized to green - Ready","prevState":"uninitialized","prevMsg":"uninitialized"}
{"type":"log","@timestamp":"2017-08-07T07:30:40Z","tags":["status","plugin:elasticsearch@5.5.1","info"],"pid":1,"state":"yellow
","message":"Status changed from uninitialized to yellow - Waiting for Elasticsearch","prevState":"uninitialized","prevMsg":"un
initialized"}
{"type":"log","@timestamp":"2017-08-07T07:30:40Z","tags":["status","plugin:console@5.5.1","info"],"pid":1,"state":"green","mess
age":"Status changed from uninitialized to green - Ready","prevState":"uninitialized","prevMsg":"uninitialized"}
{"type":"log","@timestamp":"2017-08-07T07:30:40Z","tags":["status","plugin:metrics@5.5.1","info"],"pid":1,"state":"green","mess
age":"Status changed from uninitialized to green - Ready","prevState":"uninitialized","prevMsg":"uninitialized"}
{"type":"log","@timestamp":"2017-08-07T07:30:40Z","tags":["status","plugin:timelion@5.5.1","info"],"pid":1,"state":"green","mes
sage":"Status changed from uninitialized to green - Ready","prevState":"uninitialized","prevMsg":"uninitialized"}
{"type":"log","@timestamp":"2017-08-07T07:30:40Z","tags":["listening","info"],"pid":1,"message":"Server running at http://0.0.0
.0:5601"}
```

------
# Original README.md
Provides a ready-to-run [Kibana](http://www.elasticsearch.org/overview/kibana/) server that can
easily hook into your [Elasticsearch containers](https://registry.hub.docker.com/u/itzg/elasticsearch/).

## Usage with Docker elasticsearch container

This is by far the easiest and most Docker'ish way to run Kibana.

Assuming you started one or more containers using something like

    docker run -d --name your-es -p 9200:9200 itzg/elasticsearch

Start Kibana using

    docker run -d -p 5601:5601 --link your-es:es itzg/kibana

Proceed to use Kibana starting from 
[this point in the documentation](http://www.elasticsearch.org/guide/en/kibana/current/access.html)

## Usage with non-Docker elasticsearch

Start Kibana using

    docker run -d -p 5601:5601 -e ES_URL=http://YOUR_ES:9200 itzg/kibana

Replacing `http://YOUR_ES:9200` with the appropriate URL for your system.
