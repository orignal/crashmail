# type either "make linux" or "make win32" to compile

help:
	@echo You can use this Makefile in the following ways:
	@echo make linux ............ Make Linux binaries
	@echo make win32 ............ Make Win32 binaries
	@echo make os2 .............. Make OS/2 binaries
	@echo make cleanlinux ....... Remove object files under Linux
	@echo make cleanwin32 ....... Remove object files under Win32
	@echo make cleanos2 ......... Remove object files under OS/2
		
linux :
	mkdir -p obj
	make -C cmnllib -f Makefile.linux
	make -C jamlib -f Makefile.linux
	make -C oslib_linux 
	make -f Makefile.linux
	
win32 :
	make -C cmnllib -f Makefile.win32
	make -C jamlib -f Makefile.win32
	make -C oslib_win32 
	make -f Makefile.win32

osx :
	mkdir -p obj
	make -C cmnllib -f Makefile.osx
	make -C jamlib -f Makefile.osx
	make -C oslib_linux 
	make -f Makefile.osx

cleanlinux : 
	make -C cmnllib -f Makefile.linux clean
	make -C jamlib -f Makefile.linux clean
	make -C oslib_linux clean
	make -f Makefile.linux clean
	
cleanwin32 : 
	make -C cmnllib -f Makefile.win32 clean
	make -C jamlib -f Makefile.win32 clean
	make -C oslib_win32 clean
	make -f Makefile.win32 clean

cleanosx : 
	make -C cmnllib -f Makefile.osx clean
	make -C jamlib -f Makefile.osx clean
	make -C oslib_linux clean
	make -f Makefile.osx clean

