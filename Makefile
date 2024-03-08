all:
	@echo "make install / make uninstall"

install:
	install -v -m 755 dpkg-sort-versions /usr/local/bin/
	install -v -d -m 755 /usr/local/man/man1/
	install -v -m 644 dpkg-sort-versions.1 /usr/local/man/man1/

uninstall:
	rm -v -f /usr/local/bin/dpkg-sort-versions
	rm -v -f /usr/local/man/man1/dpkg-sort-versions.1

man:
	pandoc --standalone --to man README.md -o dpkg-sort-versions.1
