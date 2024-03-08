#!/usr/bin/env sh

export PATH=$PATH:${fdroidserver}

. /etc/profile.d/bsenv.sh
${fdroidserver}/fdroid nightly -v $*
