#!/bin/bash

#usage:
# curl -LSs https://raw.githubusercontent.com/nagypeter/test/master/setup-operator-workshop.sh | bash

echo "Setup environment for WebLogic Kubernetes Operator Workshop..."

curl -LSs https://raw.githubusercontent.com/nagypeter/test/master/bin/install-docker.sh | bash

curl -LSs https://raw.githubusercontent.com/nagypeter/test/master/bin/install-oci.sh | bash

curl -LSs https://raw.githubusercontent.com/nagypeter/test/master/bin/install-kubectl.sh | bash

curl -LSs https://raw.githubusercontent.com/nagypeter/test/master/bin/install-git.sh | bash

curl -LSs https://raw.githubusercontent.com/nagypeter/test/master/bin/clone-weblogic-kubernetes-operator.sh | bash

#curl -LSs https://raw.githubusercontent.com/nagypeter/test/master/bin/install-java.sh | bash

#curl -LSs https://raw.githubusercontent.com/nagypeter/test/master/bin/install-maven.sh | bash
