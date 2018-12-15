#!/bin/bash

#
# Set the correct JDK Environment - need JDK 8.  Please use OpenJDK
#

#
# Run 
#
mvn -Drun.jvmArguments="-Dbootstrap.server=`oc get routes my-cluster-kafka-bootstrap -o=jsonpath='{.status.ingress[0].host}{"\n"}'`:443" clean package spring-boot:run
