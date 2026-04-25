#!/bin/hs

echo "Patch v1.0.1.test"
uci set network.wg0.listen_port='51888'
uci commit network
echo "Patch is applied, wait for router to restart"
/etc/init.d/network restart
