#!/bin/bash
# stop, rebuild, install and start opennms
#
# needs to be called from the git root dir, e.g. /apps/git/opennms_foundation_2017/
sudo ./target/opennms-21.1.0-SNAPSHOT/bin/opennms stop
sudo rm -r ./target
./clean.pl && ./compile.pl -DskipTests && ./assemble.pl -p dir
./target/opennms-21.1.0-SNAPSHOT/bin/runjava -s
sudo ./target/opennms-21.1.0-SNAPSHOT/bin/install -dis
sudo ./target/opennms-21.1.0-SNAPSHOT/bin/opennms start
