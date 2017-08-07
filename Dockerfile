FROM openjdk:8u121-jre

LABEL maintainer "itzg"

ENV KIBANA_VERSION 5.5.1

ADD https://artifacts.elastic.co/downloads/kibana/kibana-${KIBANA_VERSION}-linux-x86_64.tar.gz /tmp/kibana.tgz

RUN tar -C /opt -xzf /tmp/kibana.tgz && rm /tmp/kibana.tgz

ENV KIBANA_HOME /opt/kibana-$KIBANA_VERSION-linux-x86_64

# Simplify for cross-container
ENV ES_URL http://es:9200

WORKDIR $KIBANA_HOME

ADD start.sh /start

EXPOSE 5601

CMD ["/start"]
