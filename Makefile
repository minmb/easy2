install:
	mkdir -p $(DESTDIR)/etc/default
	cp -pr easy2 $(DESTDIR)/etc
	cp default $(DESTDIR)/etc/default/easy2

.PHONY: install
