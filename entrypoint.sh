#!/usr/bin/env sh

export PATH=$PATH:${fdroidserver}

. /etc/profile.d/bsenv.sh
ln -s ${fdroidserver}/fdroid /usr/local/bin
${fdroidserver}/fdroid nightly -v $*
