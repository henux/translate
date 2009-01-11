# translate Makefile

PREFIX=/usr/local
BINDIR=$(PREFIX)/bin
DOCDIR=$(PREFIX)/share/doc/translate

.PHONY: install uninstall

install:
	install -D -m755 translate $(BINDIR)/translate
	install -D -m644 README $(DOCDIR)/README

uninstall:
	rm -rf $(BINDIR)/translate
	rm -rf $(DOCDIR)
