@echo off
REM call "C:\Program Files (x86)\Microsoft Visual Studio 14.0\VC\vcvarsall.bat" x86 8.1
call "c:\Program Files (x86)\Microsoft Visual Studio 14.0\Common7\Tools\VsMSBuildCmd.bat"

set ES_DIR=%cd%
set ES_INCLUDE=%ES_DIR%\external\include
set ES_LIB_DIR=%ES_DIR%\external\lib32

SET SDL2DIR=%ES_INCLUDE%\sdl2

mkdir %ES_DIR%\build
cd %ES_DIR%\build

cmake -g "Visual Studio 14 2015 x86" .. -T"v140" -DCMAKE_GENERATOR_TOOLSET=v140 -DRAPIDJSON_INCLUDE_DIRS=%ES_INCLUDE%\rapidjson -DFREETYPE_INCLUDE_DIRS=%ES_INCLUDE%\freetype -DFREETYPE_LIBRARY=%ES_LIB_DIR%\freetype.lib -DFreeImage_INCLUDE_DIR=%ES_INCLUDE% -DFreeImage_LIBRARY=%ES_LIB_DIR%\FreeImage.lib -DSDL2_INCLUDE_DIR=%ES_INCLUDE%\sdl2 -DSDL2_LIBRARY=%ES_LIB_DIR%\SDL2.lib;%ES_LIB_DIR%\SDL2main.lib -DCURL_INCLUDE_DIR=%ES_INCLUDE%\curl -DCURL_LIBRARY=%ES_LIB_DIR%\libcurl.dll.a -DVLC_INCLUDE_DIR=%ES_INCLUDE%\vlc -DVLC_LIBRARIES=%ES_LIB_DIR%\libvlc.lib;%ES_LIB_DIR%\libvlccore.lib -DVLC_VERSION=2.1.0 -DSDLMIXER_INCLUDE_DIR=%ES_INCLUDE%\sdl2 -DSDLMIXER_LIBRARY=%ES_LIB_DIR%\SDL2_mixer.lib

MSBuild EmulationStation-all.sln /p:Configuration=Release /m

cd ..