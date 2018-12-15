#!/bin/bash

#
# Extract the CA Cert from OCP
#
rm -f src/main/resources/ca.crt
oc extract secret/my-cluster-cluster-ca-cert --keys=ca.crt --to=- > src/main/resources/ca.crt

#
# Import into th keystore
#
rm -f src/main/resources/keystore.jks
keytool -import -trustcacerts -alias root -file src/main/resources/ca.crt -keystore src/main/resources/keystore.jks -storepass password -noprompt
