# translate Makefile

PREFIX=/usr/local
BINDIR=$(PREFIX)/bin
MANDIR=$(PREFIX)/man/man1
DOCDIR=$(PREFIX)/share/doc/translate

.PHONY: install uninstall

install:
	install -D -m755 translate $(BINDIR)/translate
	install -D -m644 translate.1 $(MANDIR)/translate.1
	install -D -m644 README $(DOCDIR)/README

uninstall:
	rm -rf $(BINDIR)/translate
	rm -rf $(MANDIR)/translate.1 $(MANDIR)/translate.1.gz
	rm -rf $(DOCDIR)
