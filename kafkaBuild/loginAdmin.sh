#!/bin/bash

#
# Login to the cluster
#
TOKEN="_3h8M6qhPOE4iAq3iZVZY-1s5jvrGbqv0B5itOFzCxQ"
URI="master.michigan-rhug-587f.openshiftworkshop.com"
oc login https://${URI}:443 --token=${TOKEN}
