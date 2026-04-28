#!/bin/sh

echo "Patch v1.0.3"
echo "This patch adds VK IP addreses to the OpenWrt direct routing"

#vk ip
uci add_list homeproxy.control.wan_direct_ipv4_ips='95.142.204.188/32'
uci add_list homeproxy.control.wan_direct_ipv4_ips='95.213.56.1/32'
uci add_list homeproxy.control.wan_direct_ipv4_ips='93.186.237.1/32'
uci add_list homeproxy.control.wan_direct_ipv4_ips='87.240.139.193/32'
uci add_list homeproxy.control.wan_direct_ipv4_ips='87.240.137.207/32'
uci add_list homeproxy.control.wan_direct_ipv4_ips='87.240.190.70/32'
uci add_list homeproxy.control.wan_direct_ipv4_ips='87.240.137.206/32'
uci add_list homeproxy.control.wan_direct_ipv4_ips='87.240.129.140/32'
uci add_list homeproxy.control.wan_direct_ipv4_ips='93.186.225.205/32'
uci add_list homeproxy.control.wan_direct_ipv4_ips='87.240.190.75/32'
uci add_list homeproxy.control.wan_direct_ipv4_ips='87.240.137.130/32'
uci add_list homeproxy.control.wan_direct_ipv4_ips='87.240.137.208/32'

uci commit homeproxy
echo "Patch is applied, wait for the services to restart"
/etc/init.d/homeproxy restart
echo "Finished"
