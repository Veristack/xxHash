set PATH=C:\mingw\bin;%PATH%
set CC=C:\MinGW\bin\gcc.exe
set CXX=C:\MinGW\bin\gcc.exe
set MINGWMAKE=C:\MinGW\bin\mingw32-make.exe

del /F CMakeCache.txt
cmake -DBUILD_XXHSUM=OFF -G "MinGW Makefiles" .
%MINGWMAKE%
