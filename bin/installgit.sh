#!/bin/bash

#usage:
# curl -LSs https://raw.githubusercontent.com/nagypeter/test/master/bin/installgit.sh | bash

sudo dnf -y install git

git version
