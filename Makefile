# translate Makefile

PREFIX=/usr/local
BINDIR=$(PREFIX)/bin
MANDIR=$(PREFIX)/man/man1
DOCDIR=$(PREFIX)/share/doc/translate

.PHONY: install uninstall

install:
	gzip -c translate.1 > translate.1.gz
	install -m755 -t $(BINDIR) translate
	install -m644 -t $(MANDIR) translate.1.gz
	install -m755 -d $(DOCDIR)
	install -m644 -t $(DOCDIR) README
	rm -f translate.1.gz

uninstall:
	rm -f $(BINDIR)/translate
	rm -f $(MANDIR)/translate.1.gz
	rm -rf $(DOCDIR)
