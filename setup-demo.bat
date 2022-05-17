#!/bin/sh
call set-python-path
python -m pip install pipenv
del /Q Pipfile.lock
python -m pipenv --rm
python -m pipenv install 
python -m pipenv run python -m nuitka --version







