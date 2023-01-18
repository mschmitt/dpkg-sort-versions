all:
	@echo "make install / make uninstall"

install:
	install -v -m 755 dpkg-sort-versions /usr/local/bin/

uninstall:
	rm -v -f /usr/local/bin/dpkg-sort-versions
