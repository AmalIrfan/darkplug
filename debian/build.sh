#!/bin/sh

set -e
mkdir -p build/
cp -r darkplug/ build/
find build/ -name ".gitkeep" -delete

cp ../darkplug.conf build/darkplug/etc/
cp ../darkplug.sh build/darkplug/usr/bin/
cp ../darkplug.service build/darkplug/lib/systemd/system/

fakeroot dpkg-deb --build build/darkplug darkplug.deb
