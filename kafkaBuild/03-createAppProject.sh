#!/bin/bash

#
#  1.  Set the PROJECT env var to what the new project is going to be named
#  2.  Create the new project
#  3.  Set the env for watching the kafka and ${PROJECT} 
#  4.  Apply the new permissions needed

PROJECT=rhug-gr
oc new-project ${PROJECT}
oc env deploy/strimzi-cluster-operator STRIMZI_NAMESPACE=kafka,${PROJECT} -n kafka
oc apply -f install/cluster-operator/020-RoleBinding-strimzi-cluster-operator.yaml -n ${PROJECT}
oc apply -f install/cluster-operator/032-RoleBinding-strimzi-cluster-operator-topic-operator-delegation.yaml -n ${PROJECT}
oc apply -f install/cluster-operator/031-RoleBinding-strimzi-cluster-operator-entity-operator-delegation.yaml -n ${PROJECT}
