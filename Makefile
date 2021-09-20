PREFIX    ?= /usr/local
BINDIR    ?= $(PREFIX)/bin

install:
	mkdir -p $(BINDIR)
	install aws-connect $(BINDIR)/aws-connect

uninstall:
	rm -f $(BINDIR)/aws-connect
