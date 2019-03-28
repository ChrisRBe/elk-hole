FROM sebp/elk:650

ENV LOGSTASH_PATH_CONF /etc/logstash

RUN mkdir ${LOGSTASH_PATH_CONF}/patterns
ADD ./logstash/patterns/dns ${LOGSTASH_PATH_CONF}/patterns/dns
ADD ./logstash/conf.d/20-dns-syslog.conf ${LOGSTASH_PATH_CONF}/20-dns-syslog.conf