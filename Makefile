#
# Global Settings
#

INSTALL = install
DESTDIR ?= /
PREFIX  ?= $(DESTDIR)

PATH_BACKGROUNDS = $(PREFIX)/usr/share/backgrounds

#
# Targets
#

all:
	@echo "Nothing to do"

install:
# Taken from http://wallpaper-site.webflow.io
	$(INSTALL) -m0644 -D backgrounds/ESP_016869_1775_desktop.jpg $(PATH_BACKGROUNDS)/ESP_016869_1775_desktop.jpg
	$(INSTALL) -m0644 -D backgrounds/ESP_016895_1525_desktop.jpg $(PATH_BACKGROUNDS)/ESP_016895_1525_desktop.jpg
	$(INSTALL) -m0644 -D backgrounds/ESP_018105_2045_desktop.jpg $(PATH_BACKGROUNDS)/ESP_018105_2045_desktop.jpg
	$(INSTALL) -m0644 -D backgrounds/ESP_018747_2065_desktop.jpg $(PATH_BACKGROUNDS)/ESP_018747_2065_desktop.jpg
	$(INSTALL) -m0644 -D backgrounds/ESP_019753_2000_desktop.jpg $(PATH_BACKGROUNDS)/ESP_019753_2000_desktop.jpg
	$(INSTALL) -m0644 -D backgrounds/ESP_020190_1690_desktop.jpg $(PATH_BACKGROUNDS)/ESP_020190_1690_desktop.jpg
	$(INSTALL) -m0644 -D backgrounds/ESP_020528_1750_desktop.jpg $(PATH_BACKGROUNDS)/ESP_020528_1750_desktop.jpg
	$(INSTALL) -m0644 -D backgrounds/ESP_034883_1645_desktop.jpg $(PATH_BACKGROUNDS)/ESP_034883_1645_desktop.jpg
	$(INSTALL) -m0644 -D backgrounds/regolith-lockscreen.jpg $(PATH_BACKGROUNDS)/regolith-lockscreen.jpg

uninstall:
	rm -f $(PATH_BACKGROUNDS)/ESP_0*.jpg
	rm -f $(PATH_BACKGROUNDS)/regolith-lockscreen.jpg

.PHONY: all install uninstall
