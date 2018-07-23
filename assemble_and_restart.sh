#!/bin/bash
# stop, rebuild, install and start opennms
#
# needs to be called from the git root dir, e.g. /apps/git/opennms_foundation_2017/
sudo ./target/opennms-21.1.0-SNAPSHOT/bin/opennms stop
sudo rm -r ./target
./assemble.pl -p dir -DskipTests 
./target/opennms-21.1.0-SNAPSHOT/bin/runjava -s
sudo ./target/opennms-21.1.0-SNAPSHOT/bin/install -dis
sudo ./target/opennms-21.1.0-SNAPSHOT/bin/opennms -vt start
