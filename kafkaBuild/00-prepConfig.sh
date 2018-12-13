#!/bin/bash
# set the name of the project (namespace) 
NAMESPACE=kafka

# clean up existing directory
/bin/rm -rf ./examples ./install > /dev/null 2>&1

# the zip file comes from the AMQ Streams (Kafka) announcement
# page:  https://access.redhat.com/node/3667151/423/0
# extract the artifacts from the .zip file
unzip install_and_examples_0.zip

# swizzle the namespace in the install documents.
sed -i '' 's/namespace: .*/namespace: kafka/' install/cluster-operator/*RoleBinding*.yaml
