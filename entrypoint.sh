#!/usr/bin/env sh

export PATH=$PATH:${fdroidserver}

. /etc/profile.d/bsenv.sh
cd ${fdroidserver}
pwd
echo $PATH
./fdroid nightly -v $*
