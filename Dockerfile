FROM openjdk:8-jre
MAINTAINER Clarence Ho <clarence@skywidesoft.com>

RUN apt-get update \
    && wget http://nlp.stanford.edu/software/stanford-corenlp-full-2016-10-31.zip \
    && unzip stanford-corenlp-full-2016-10-31.zip \
    && rm stanford-corenlp-full-2016-10-31.zip

WORKDIR stanford-corenlp-full-2016-10-31

RUN wget http://nlp.stanford.edu/software/stanford-chinese-corenlp-2016-10-31-models.jar \
    && wget http://nlp.stanford.edu/software/stanford-english-corenlp-2016-10-31-models.jar

ENV PORT 9000

EXPOSE $PORT

CMD java -cp "*" -mx6g edu.stanford.nlp.pipeline.StanfordCoreNLPServer
