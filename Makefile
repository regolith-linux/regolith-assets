INSTALL = install
DESTDIR ?= /
PREFIX  ?= $(DESTDIR)

PATH_BACKGROUNDS = $(PREFIX)/usr/share/backgrounds
PATH_GNOME_WALLPAPERS = $(PREFIX)/usr/share/gnome-background-properties/

all:
	@echo "Nothing to do"

install:
    # Taken from http://wallpaper-site.webflow.io
	$(INSTALL) -m0644 -D backgrounds/ESP_016895_1525_desktop.jpg $(PATH_BACKGROUNDS)/ESP_016895_1525_desktop.jpg
	$(INSTALL) -m0644 -D backgrounds/ESP_019753_2000_desktop.jpg $(PATH_BACKGROUNDS)/ESP_019753_2000_desktop.jpg
	$(INSTALL) -m0644 -D backgrounds/ESP_020528_1750_desktop.jpg $(PATH_BACKGROUNDS)/ESP_020528_1750_desktop.jpg
	$(INSTALL) -m0644 -D backgrounds/luca-bravo-xnqVGsbXgV4-unsplash.jpg $(PATH_BACKGROUNDS)/regolith-default.jpg

    # Required for wallpapers to be selectable in gnome-control-center.
	$(INSTALL) -m0644 -D regolith-wallpapers.xml $(PATH_GNOME_WALLPAPERS)/regolith-wallpapers.xml

uninstall:
	rm -f $(PATH_BACKGROUNDS)/ESP_0*.jpg \
		$(PATH_BACKGROUNDS)/regolith-default.jpg \
		$(PATH_GNOME_WALLPAPERS)/regolith-wallpapers.xml

.PHONY: all install uninstall
