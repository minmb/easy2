# -*- mode: makefile; tab-width: 4; indent-tabs-mode: t -*-

install:
	mkdir -p $(DESTDIR)/usr/lib
	cp -pr lib $(DESTDIR)/usr/lib/easy2

	mkdir -p $(DESTDIR)/etc/default
	cp default $(DESTDIR)/etc/default/easy2

	mkdir -p $(DESTDIR)/etc/easy2/start.d
	mkdir -p $(DESTDIR)/etc/easy2/stop.d

.PHONY: install