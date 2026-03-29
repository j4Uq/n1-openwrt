#!/bin/bash

# Adjust source code
patch -p1 -f < $(dirname "$0")/luci.patch

# Modify default IP
sed -i 's/192.168.1.1/192.168.2.1/' package/base-files/files/bin/config_generate

# Update packages
sed -i '/luci-app-attendedsysupgrade/d' feeds/luci/collections/luci/Makefile
