#Demos

This is a collection of demo applications which can be usd to learn and show the functionality of AMQ Streams and Apache Kafka.

*IMPORTANT:*  _ALL_ examples require Java 8.  The OpenJDK is the preferred JDK.

##Demo 00 - Simple Producer and Consumer using Apache Camel.
This demo using the camel-context.xml file to configure a simple producer and consumer route.  

The producer will create a series of messages counting up to 1000. The message emitted can be modified by changing the camel-context.xml configuration file in src/main/resources/spring..

The consumer will log the message to where the logger is configured to write log messages.  See <http://camel.apache.org/log.html> for further information on log configuration.
