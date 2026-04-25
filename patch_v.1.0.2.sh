#!/bin/sh

echo "Patch v1.0.2.test"

uci add_list homeproxy.@control[0].wan_direct_ipv4_ips='123.123.123.123/32'
uci add_list homeproxy.@control[0].wan_direct_ipv4_ips='123.123.124.123/32'
uci add_list homeproxy.@control[0].wan_direct_ipv4_ips='123.123.125.123/32'
uci add_list homeproxy.@control[0].wan_direct_ipv4_ips='123.123.126.123/32'
uci add_list homeproxy.@control[0].wan_direct_ipv4_ips='123.123.127.123/32'

uci commit homeproxy

/etc/init.d/homeproxy restart
echo "Patch is applied, wait for the services to restart"
