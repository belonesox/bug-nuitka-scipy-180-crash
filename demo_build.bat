rem 
set PATH=C:\ta-buildroot\python-x86-3.8.10\;%PATH%
call "C:\Program Files (x86)\Microsoft Visual Studio\2019\BuildTools\Common7\Tools\VsDevCmd.bat"
python.exe -m pipenv run python -m nuitka --version
python -m pipenv run python -m nuitka --show-scons --standalone --show-progress --unstripped --plugin-enable=numpy  --msvc=14.2 --standalone --follow-imports   test.py >build.log 2>&1
rem mkdir test.dist\sklearn\.libs
rem echo n | xcopy /I /E /Y /D "C:\Users\stas\.virtualenvs\dm-client-build-win-python-3-7-lto-Zr4yzN3f\Lib\site-packages\sklearn\.libs" "test.dist\sklearn\.libs\"

