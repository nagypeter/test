#!/bin/bash

#usage:
# curl -LSs https://raw.githubusercontent.com/nagypeter/test/master/bin/clone-weblogic-kubernetes-operator.sh | bash

echo "Clone WebLogic Kubernetes Operator repository..."


export CURRENTDIR=$PWD
export GIT_URL="https://github.com/oracle/weblogic-kubernetes-operator.git"
export BRANCH="2.0"
export GITLOCALFOLDER="weblogic-kubernetes-operator"
export CONTENT_DIR="/u01/content/"

# if /u01 doesn't exist
if [ ! -e "/u01" ]; then
  echo "Creating /u01 folder"
  sudo mkdir /u01
  sudo chown oracle:oracle /u01
fi

mkdir -p $CONTENT_DIR/$GITLOCALFOLDER

#clean, if script runs more
rm -rf $CONTENT_DIR/$GITLOCALFOLDER
rm -rf  /u01/weblogic-output-directory/*

cd $CONTENT_DIR

if [ ! -e ${GITLOCALFOLDER} ]; then
  echo "Cloning remote repository from ${GIT_URL} to ${GITLOCALFOLDER}..."
  git clone ${GIT_URL}
  cd ${GITLOCALFOLDER}
  git checkout ${BRANCH}
else
  echo "Update remote repository from ${GIT_URL} to ${GITLOCALFOLDER}..."
  cd ${GITLOCALFOLDER}
  git fetch

  git reset --hard origin/${BRANCH}

  echo "========================================"
  echo "The file(s) below is not tracked by git:"
  git clean -n
  echo "========================================"
fi

cd $PWD
