@echo # =================================================================
@echo # Generates a Makefile for mingw32-make.exe by using `cmake`,
@echo # then build xxhash lib.
@echo # On success the following files should be created:
@echo # libxxhash.a
@echo # libxxhash.dll
@echo # libxxhash.dll.a
@echo # =================================================================

set PATH=C:\mingw\bin;%PATH%
set CC=C:\MinGW\bin\gcc.exe
set CXX=C:\MinGW\bin\gcc.exe
set MINGWMAKE=C:\MinGW\bin\mingw32-make.exe

@echo # cmake cache: decomment it to re-generate the Makefile from scratch.
@echo # del /F CMakeCache.txt

cmake -DBUILD_XXHSUM=OFF -G "MinGW Makefiles" .
%MINGWMAKE%
