FROM gcr.io/google-appengine/openjdk

WORKDIR /opt

ENV HADOOP_HOME=/opt/hadoop
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64

RUN apt-get update && \
    apt-get -y install mysql-server && \
    wget -qO- https://www.apache.org/dist/hive/hive-standalone-metastore-3.0.0/hive-standalone-metastore-3.0.0-bin.tar.gz | tar -xvz && \
    mv apache-hive-metastore-3.0.0-bin hive && \
    wget -qO- https://www-us.apache.org/dist/hadoop/common/hadoop-3.2.1/hadoop-3.2.1.tar.gz | tar -xvz && \
    mv hadoop-3.2.1 hadoop

# Add default configuration
ADD conf hive/conf
# Add missing jars
ADD lib hive/lib
# Old guava.jar
RUN rm hive/lib/guava-19.0.jar

EXPOSE 9083

COPY entrypoint.sh /usr/bin/
ENTRYPOINT ["entrypoint.sh"]
