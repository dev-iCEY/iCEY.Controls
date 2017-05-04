@echo off
@rem Add path to MSBuild Binaries
@if exist "%ProgramFiles%\Microsoft Visual Studio\2017\Enterprise\MSBuild\15.0\Bin" set PATH=%ProgramFiles%\Microsoft Visual Studio\2017\Enterprise\MSBuild\15.0\Bin;%PATH%
@if exist "%ProgramFiles(x86)%\Microsoft Visual Studio\2017\Enterprise\MSBuild\15.0\Bin" set PATH=%ProgramFiles(x86)%\Microsoft Visual Studio\2017\Enterprise\MSBuild\15.0\Bin;%PATH%

msbuild ".\src\Yume.Controls\Yume.Controls.sln" /t:Rebuild /p:Configuration=Debug;Platform=x86 /m
msbuild ".\src\Yume.Controls\Yume.Controls.sln" /t:Rebuild /p:Configuration=Release;Platform=x86 /m
msbuild ".\src\Yume.Controls\Yume.Controls.sln" /t:Rebuild /p:Configuration=Debug;Platform=x64 /m
msbuild ".\src\Yume.Controls\Yume.Controls.sln" /t:Rebuild /p:Configuration=Release;Platform=x64 /m
