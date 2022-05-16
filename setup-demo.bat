#!/bin/sh
set PATH=C:\ta-buildroot\python-x86-3.8.10;%PATH%
python.exe -m pip install pipenv
del /Q Pipfile.lock
python.exe -m pipenv --rm
python.exe -m pipenv install 
python.exe -m pipenv run python -m nuitka --version







