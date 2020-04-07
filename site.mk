GLUON_FEATURES := \
	autoupdater \
	ebtables-filter-multicast \
	ebtables-filter-ra-dhcp \
	ebtables-limit-arp \
	mesh-batman-adv-14 \
	mesh-vpn-fastd \
	respondd \
	status-page \
	web-advanced \
	web-wizard \
	web-private-wifi

GLUON_SITE_PACKAGES := \
	gluon-core \
	gluon-setup-mode \
	gluon-config-mode-core \
	gluon-authorized-keys \
	haveged \
	iptables \
	iwinfo

# from https://github.com/Freifunk-Greifswald/packages-ffhgw:
	GLUON_SITE_PACKAGES += \
	gluon-rfkill-disable \
	ffhgw-banner

# from https://github.com/Freifunk-Nord/gluon-ssid-changer:
	GLUON_SITE_PACKAGES += \
	gluon-ssid-changer

DEFAULT_GLUON_RELEASE := yyyy-mm-dd~commit

# Allow overriding the release number from the command line
GLUON_RELEASE ?= $(DEFAULT_GLUON_RELEASE)

# Default priority for updates.
GLUON_PRIORITY ?= 0

GLUON_BRANCH ?= stable
export GLUON_BRANCH

GLUON_TARGET ?= ar71xx-tiny
export GLUON_TARGET

# Region code required for some images; supported values: us eu
GLUON_REGION ?= eu

# Languages to include
GLUON_LANGS ?= en de

#enable generation of images for ath10k devices with ibss mode
GLUON_WLAN_MESH=11s

# Do not build images for deprecated devices
GLUON_DEPRECATED ?= full
