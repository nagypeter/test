#!/bin/bash

#usage:
# curl -LSs https://raw.githubusercontent.com/nagypeter/test/master/bin/installgit.sh | bash

sudo dnf install -y git

git version
