include $(TOPDIR)/rules.mk

PKG_NAME:=bareiron
PKG_RELEASE:=1

PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=https://github.com/p2r3/bareiron.git
PKG_SOURCE_VERSION:=e6ea4e112ce90159de04b1563ec11d750cb7d38f
PKG_MIRROR_HASH:=ff3181e21712fca9b177d2a8d77c7387c22139fd52e4367b48a912bc7dff30ed

PKG_BUILD_PARALLEL:=1

include $(INCLUDE_DIR)/package.mk

define Package/bareiron
  SECTION:=haha
  CATEGORY:=Game
  TITLE:=Minimalist Minecraft server
endef

define Package/bareiron/description
  Minimalist Minecraft server for memory-restrictive embedded systems.
endef

define Package/bareiron/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/bareiron $(1)/usr/bin
	$(INSTALL_DIR) $(1)/etc/init.d
	$(INSTALL_BIN) ./files/bareiron.init $(1)/etc/init.d/bareiron
endef

$(eval $(call BuildPackage,bareiron))
