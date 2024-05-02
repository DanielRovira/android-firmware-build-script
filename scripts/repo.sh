#!/bin/bash
source $HOME/.build_temp
source $MAIN/CONFIG
source $SCRIPTS/.last
source $SCRIPTS/.shutdown
source $SCRIPTS/$ROM/config
echo "Repo sync"
mkdir /home/$USER/bin
PATH=/home/$USER/bin:$PATH
curl https://storage.googleapis.com/git-repo-downloads/repo > /home/$USER/bin/repo
chmod a+x /home/$USER/bin/repo
mkdir -p $HD/$ROM/.repo/local_manifests/
cp $SCRIPTS/$ROM/local_manifest.xml $HD/$ROM/.repo/local_manifests/local_manifest.xml
cd $HD/$ROM
git config --global user.email $GITUSER
git config --global user.name $GITNAME
git lfs install
repo init -u $REPO -b $BRANCH --git-lfs
#repo init --reference=~/HD/aicp -u $REPO -b $BRANCH
repo sync --force-sync --no-clone-bundle
cd $HOME
#if [ $SHUT = "yes" ]; then 
#sudo -u $USER shutdown -h $TIME
#fi
echo "Options:"
echo "1) Build	 3) Sync repo	  5) List options"
echo "2) Clean	 4) Return"
