#!/bin/bash
cd openwrt
cat >> .config <<EOF
CONFIG_TARGET_armvirt=y
CONFIG_TARGET_armvirt_64=y
CONFIG_TARGET_armvirt_64_DEVICE_generic=y
CONFIG_HAS_SUBTARGETS=y
CONFIG_HAS_DEVICES=y
CONFIG_TARGET_BOARD="armvirt"
CONFIG_TARGET_SUBTARGET="64"
CONFIG_TARGET_PROFILE="DEVICE_generic"
CONFIG_TARGET_ARCH_PACKAGES="aarch64_generic"
CONFIG_DEFAULT_TARGET_OPTIMIZATION="-Os -pipe -mcpu=generic"
CONFIG_CPU_TYPE="generic"
CONFIG_EXTRA_OPTIMIZATION="-fno-caller-saves -fno-plt"
CONFIG_TARGET_OPTIONS=y
CONFIG_TARGET_OPTIMIZATION="-Os -pipe -march=armv8-a+crypto -mtune=cortex-a53 "
CONFIG_BTRFS_PROGS_ZSTD=y
CONFIG_COREMARK_NUMBER_OF_THREADS=16
# CONFIG_LIBCURL_NGHTTP2 is not set
# CONFIG_LIBCURL_UNIX_SOCKETS is not set
CONFIG_LIBMBEDTLS_HAVE_ARMV8CE_AES=y
CONFIG_PACKAGE_6in4=y
CONFIG_PACKAGE_TAR_BZIP2=y
CONFIG_PACKAGE_TAR_GZIP=y
CONFIG_PACKAGE_TAR_XZ=y
CONFIG_PACKAGE_TAR_ZSTD=y
CONFIG_PACKAGE_attr=y
CONFIG_PACKAGE_bash=y
CONFIG_PACKAGE_bind-dig=y
CONFIG_PACKAGE_bind-libs=y
CONFIG_PACKAGE_blkid=y
CONFIG_PACKAGE_boost=y
CONFIG_PACKAGE_boost-date_time=y
CONFIG_PACKAGE_boost-program_options=y
CONFIG_PACKAGE_boost-system=y
# CONFIG_PACKAGE_brook is not set
CONFIG_PACKAGE_bsdtar=y
CONFIG_PACKAGE_btrfs-progs=y
CONFIG_PACKAGE_bzip2=y
CONFIG_PACKAGE_chattr=y
CONFIG_PACKAGE_coreutils=y
CONFIG_PACKAGE_coreutils-base64=y
CONFIG_PACKAGE_coreutils-nohup=y
CONFIG_PACKAGE_coreutils-paste=y
CONFIG_PACKAGE_coreutils-sort=y
CONFIG_PACKAGE_ddns-scripts=y
CONFIG_PACKAGE_ddns-scripts_services=y
CONFIG_PACKAGE_ddns-scripts_aliyun=y
CONFIG_PACKAGE_ddns-scripts_cloudflare.com-v4=y
CONFIG_PACKAGE_ddns-scripts_dnspod=y
CONFIG_PACKAGE_dosfstools=y
CONFIG_PACKAGE_dnsmasq_full_auth=y
CONFIG_PACKAGE_dnsmasq_full_conntrack=y
CONFIG_PACKAGE_dnsmasq_full_dhcpv6=y
CONFIG_PACKAGE_dnsmasq_full_dnssec=y
# CONFIG_PACKAGE_etherwake is not set
CONFIG_PACKAGE_f2fs-tools=y
CONFIG_PACKAGE_f2fsck=y
CONFIG_PACKAGE_fdisk=y
CONFIG_PACKAGE_gawk=y
CONFIG_PACKAGE_getopt=y
CONFIG_PACKAGE_git=y
CONFIG_PACKAGE_git-http=y
# CONFIG_PACKAGE_haproxy is not set
CONFIG_PACKAGE_htop=y
# CONFIG_PACKAGE_hysteria is not set
CONFIG_PACKAGE_ip6tables=y
CONFIG_PACKAGE_ip6tables-mod-nat=y
CONFIG_PACKAGE_ipv6helper=y
# CONFIG_PACKAGE_kcptun-client is not set
# CONFIG_PACKAGE_kcptun-config is not set
CONFIG_PACKAGE_kmod-crypto-crc32c=y
CONFIG_PACKAGE_kmod-fs-btrfs=y
CONFIG_PACKAGE_kmod-ipt-nat6=y
# CONFIG_PACKAGE_kmod-ipt-offload is not set
CONFIG_PACKAGE_kmod-iptunnel=y
CONFIG_PACKAGE_kmod-iptunnel4=y
CONFIG_PACKAGE_kmod-lib-crc32c=y
CONFIG_PACKAGE_kmod-lib-raid6=y
CONFIG_PACKAGE_kmod-lib-xor=y
CONFIG_PACKAGE_kmod-lib-zlib-deflate=y
CONFIG_PACKAGE_kmod-lib-zlib-inflate=y
CONFIG_PACKAGE_kmod-lib-zstd=y
# CONFIG_PACKAGE_kmod-nf-flow is not set
CONFIG_PACKAGE_kmod-nf-nat6=y
CONFIG_PACKAGE_kmod-shortcut-fe=y
CONFIG_PACKAGE_kmod-shortcut-fe-cm=y
CONFIG_PACKAGE_kmod-sit=y
CONFIG_PACKAGE_libarchive=y
CONFIG_PACKAGE_libatomic=y
CONFIG_PACKAGE_libattr=y
CONFIG_PACKAGE_libbz2=y
CONFIG_PACKAGE_libcap=y
CONFIG_PACKAGE_libevent2=y
CONFIG_PACKAGE_libexpat=y
CONFIG_PACKAGE_libfdisk=y
CONFIG_PACKAGE_libgmp=y
CONFIG_PACKAGE_libltdl=y
CONFIG_PACKAGE_liblua5.3=y
CONFIG_PACKAGE_liblzma=y
CONFIG_PACKAGE_liblzo=y
CONFIG_PACKAGE_libmbedtls=y
CONFIG_PACKAGE_libminiupnpc=y
CONFIG_PACKAGE_libmount=y
CONFIG_PACKAGE_libnatpmp=y
CONFIG_PACKAGE_libncurses=y
CONFIG_PACKAGE_libnetfilter-conntrack=y
CONFIG_PACKAGE_libnettle=y
CONFIG_PACKAGE_libnfnetlink=y
# CONFIG_PACKAGE_libnghttp2 is not set
CONFIG_PACKAGE_libparted=y
CONFIG_PACKAGE_libreadline=y
CONFIG_PACKAGE_libsmartcols=y
CONFIG_PACKAGE_libstdcpp=y
CONFIG_PACKAGE_libuv=y
CONFIG_PACKAGE_libwebsockets-full=y
CONFIG_PACKAGE_libzstd=y
CONFIG_PACKAGE_losetup=y
CONFIG_PACKAGE_lsattr=y
CONFIG_PACKAGE_lsblk=y
# CONFIG_PACKAGE_luci-app-accesscontrol is not set
CONFIG_PACKAGE_luci-app-amlogic=y
# CONFIG_PACKAGE_luci-app-arpbind is not set
CONFIG_PACKAGE_luci-app-ddns=y
CONFIG_PACKAGE_luci-app-nlbwmon=y
# CONFIG_PACKAGE_luci-app-nps is not set
# CONFIG_PACKAGE_luci-app-openclash is not set
# CONFIG_PACKAGE_luci-app-passwall is not set
# CONFIG_PACKAGE_luci-app-passwall2 is not set
# CONFIG_PACKAGE_luci-app-ssr-plus is not set
# CONFIG_PACKAGE_luci-app-passwall2_INCLUDE_Brook is not set
# CONFIG_PACKAGE_luci-app-passwall2_INCLUDE_Hysteria is not set
# CONFIG_PACKAGE_luci-app-passwall2_INCLUDE_IPv6_Nat is not set
# CONFIG_PACKAGE_luci-app-passwall2_INCLUDE_NaiveProxy is not set
# CONFIG_PACKAGE_luci-app-passwall2_INCLUDE_V2ray is not set
# CONFIG_PACKAGE_luci-app-passwall_INCLUDE_Brook is not set
# CONFIG_PACKAGE_luci-app-passwall_INCLUDE_Hysteria is not set
# CONFIG_PACKAGE_luci-app-passwall_INCLUDE_IPv6_Nat is not set
# CONFIG_PACKAGE_luci-app-passwall_INCLUDE_NaiveProxy is not set
# CONFIG_PACKAGE_luci-app-passwall_INCLUDE_Shadowsocks_Libev_Server is not set
# CONFIG_PACKAGE_luci-app-passwall_INCLUDE_Trojan_GO is not set
# CONFIG_PACKAGE_luci-app-passwall_INCLUDE_Xray_Plugin is not set
# CONFIG_PACKAGE_luci-app-rclone_INCLUDE_rclone-ng is not set
# CONFIG_PACKAGE_luci-app-rclone_INCLUDE_rclone-webui is not set
# CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDE_Hysteria is not set
# CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDE_IPT2Socks is not set
# CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDE_Kcptun is not set
# CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDE_NaiveProxy is not set
# CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDE_Redsocks2 is not set
# CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDE_SagerNet_Core is not set
# CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDE_Shadowsocks_Libev_Client is not set
# CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDE_Shadowsocks_Rust_Server is not set
# CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDE_Simple_Obfs is not set
# CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDE_Trojan is not set
# CONFIG_PACKAGE_luci-app-ssr-plus_INCLUDE_V2ray_Plugin is not set
CONFIG_PACKAGE_luci-app-ttyd=y
# CONFIG_PACKAGE_luci-app-turboacc is not set
# CONFIG_PACKAGE_luci-app-turboacc_INCLUDE_BBR_CCA is not set
# CONFIG_PACKAGE_luci-app-turboacc_INCLUDE_OFFLOADING is not set
# CONFIG_PACKAGE_luci-app-turboacc_INCLUDE_PDNSD is not set
# CONFIG_PACKAGE_luci-app-turboacc_INCLUDE_SHORTCUT_FE_CM is not set
# CONFIG_PACKAGE_luci-app-unblockmusic_INCLUDE_UnblockNeteaseMusic_Go is not set
# CONFIG_PACKAGE_luci-app-v2raya is not set
CONFIG_PACKAGE_luci-app-upnp=y
# CONFIG_PACKAGE_luci-app-vsftpd is not set
# CONFIG_PACKAGE_luci-app-wol is not set
# CONFIG_PACKAGE_luci-app-zerotier is not set
CONFIG_PACKAGE_luci-compat=y
CONFIG_PACKAGE_luci-i18n-amlogic-zh-cn=y
CONFIG_PACKAGE_luci-i18n-ttyd-zh-cn=y
CONFIG_PACKAGE_luci-i18n-upnp-zh-cn=y
CONFIG_PACKAGE_luci-proto-ipv6=y
# CONFIG_PACKAGE_miniupnpd is not set
# CONFIG_PACKAGE_naiveproxy is not set
CONFIG_PACKAGE_nano=y
CONFIG_PACKAGE_npc=y
CONFIG_PACKAGE_odhcp6c=y
CONFIG_PACKAGE_odhcp6c_ext_cer_id=0
CONFIG_PACKAGE_odhcpd-ipv6only=y
CONFIG_PACKAGE_odhcpd_ipv6only_ext_cer_id=0
CONFIG_PACKAGE_openssh-sftp-server=y
CONFIG_PACKAGE_parted=y
CONFIG_PACKAGE_perl=y
CONFIG_PACKAGE_perl-http-date=y
CONFIG_PACKAGE_perlbase-base=y
CONFIG_PACKAGE_perlbase-bytes=y
CONFIG_PACKAGE_perlbase-charnames=y
CONFIG_PACKAGE_perlbase-class=y
CONFIG_PACKAGE_perlbase-config=y
CONFIG_PACKAGE_perlbase-cwd=y
CONFIG_PACKAGE_perlbase-dynaloader=y
CONFIG_PACKAGE_perlbase-errno=y
CONFIG_PACKAGE_perlbase-essential=y
CONFIG_PACKAGE_perlbase-fcntl=y
CONFIG_PACKAGE_perlbase-file=y
CONFIG_PACKAGE_perlbase-filehandle=y
CONFIG_PACKAGE_perlbase-getopt=y
CONFIG_PACKAGE_perlbase-i18n=y
CONFIG_PACKAGE_perlbase-integer=y
CONFIG_PACKAGE_perlbase-io=y
CONFIG_PACKAGE_perlbase-list=y
CONFIG_PACKAGE_perlbase-locale=y
CONFIG_PACKAGE_perlbase-params=y
CONFIG_PACKAGE_perlbase-posix=y
CONFIG_PACKAGE_perlbase-re=y
CONFIG_PACKAGE_perlbase-scalar=y
CONFIG_PACKAGE_perlbase-selectsaver=y
CONFIG_PACKAGE_perlbase-socket=y
CONFIG_PACKAGE_perlbase-symbol=y
CONFIG_PACKAGE_perlbase-tie=y
CONFIG_PACKAGE_perlbase-time=y
CONFIG_PACKAGE_perlbase-unicode=y
CONFIG_PACKAGE_perlbase-unicore=y
CONFIG_PACKAGE_perlbase-utf8=y
CONFIG_PACKAGE_perlbase-xsloader=y
CONFIG_PACKAGE_pv=y
CONFIG_PACKAGE_python3=y
CONFIG_PACKAGE_python3-pip=y
CONFIG_PACKAGE_python3-aiohttp=y
CONFIG_PACKAGE_python3-yaml=y
# CONFIG_PACKAGE_shadowsocks-libev-ss-local is not set
# CONFIG_PACKAGE_shadowsocks-libev-ss-redir is not set
# CONFIG_PACKAGE_shadowsocks-libev-ss-server is not set
# CONFIG_PACKAGE_shadowsocks-libev-ss-tunnel is not set
# CONFIG_PACKAGE_smartdns=y
CONFIG_PACKAGE_tar=y
CONFIG_PACKAGE_terminfo=y
# CONFIG_PACKAGE_trojan is not set
# CONFIG_PACKAGE_trojan-go is not set
# CONFIG_PACKAGE_trojan-plus is not set
CONFIG_PACKAGE_ttyd=y
CONFIG_PACKAGE_unzip=y
CONFIG_PACKAGE_uuidgen=y
# CONFIG_PACKAGE_v2ray-core is not set
# CONFIG_PACKAGE_v2ray-geoip is not set
# CONFIG_PACKAGE_v2ray-geosite is not set
# CONFIG_PACKAGE_v2ray-plugin is not set
# CONFIG_PACKAGE_vlmcsd is not set
# CONFIG_PACKAGE_luci-app-vlmcsd is not set
# CONFIG_PACKAGE_luci-i18n-vlmcsd-zh-cn is not set
# CONFIG_PACKAGE_vsftpd-alt is not set
# CONFIG_PACKAGE_wol is not set
CONFIG_PACKAGE_xfs-fsck=y
CONFIG_PACKAGE_xfs-mkfs=y
# CONFIG_PACKAGE_xray-core is not set
# CONFIG_PACKAGE_xray-plugin is not set
CONFIG_PACKAGE_xz=y
CONFIG_PACKAGE_xz-utils=y
# CONFIG_PACKAGE_zerotier is not set
CONFIG_PACKAGE_zoneinfo-core=y
CONFIG_PACKAGE_zoneinfo-asia=y
CONFIG_PARTED_READLINE=y
CONFIG_PERL_NOCOMMENT=y
# CONFIG_TARGET_ROOTFS_CPIOGZ is not set
# CONFIG_TARGET_ROOTFS_EXT4FS is not set
# CONFIG_TARGET_ROOTFS_INITRAMFS is not set
# CONFIG_TARGET_ROOTFS_SQUASHFS is not set
CONFIG_ZSTD_OPTIMIZE_O3=y
CONFIG_boost-compile-visibility-hidden=y
CONFIG_boost-runtime-shared=y
CONFIG_boost-static-and-shared-libs=y
CONFIG_boost-variant-release=y
# CONFIG_PACKAGE_flent-tools is not set
CONFIG_PACKAGE_iptables-mod-conntrack-extra=y
CONFIG_PACKAGE_iptables-mod-iprange=y
CONFIG_PACKAGE_kmod-ipt-conntrack-extra=y
CONFIG_PACKAGE_kmod-ipt-iprange=y
CONFIG_PACKAGE_kmod-tcp-bbr=y
EOF
