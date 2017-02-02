# type either "make linux", "make win32", or "make osx" to compile

help:
	@echo You can use this Makefile in the following ways:
	@echo make linux ............ Make Linux binaries
	@echo make win32 ............ Make Win32 binaries
	@echo make osx .............. Make Max OS X binaries
	@echo make cleanlinux ....... Remove object files under Linux
	@echo make cleanwin32 ....... Remove object files under Win32
	@echo make cleanosx ......... Remove object files under Mac OS X
	@echo make tests ............ Run Tests (requires /bin/sh)

linux :
	mkdir -p bin
	make -C src -f Makefile linux

win32 :
	make -C src -f Makefile win32

osx :
	make -C src -f Makefile osx

cleanlinux :
	rm -rf bin
	make -C src -f Makefile cleanlinux

cleanwin32 : 
	make -C src -f Makefile cleanwin32

cleanosx : 
	make -C src -f Makefile cleanosx

.PHONY: tests
tests: linux
	make -C tests

