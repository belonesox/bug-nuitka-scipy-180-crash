rem #!/bin/sh
call set-python-path
python -m pipenv run python -m pip uninstall nuitka -y
python -m pipenv run python C:\projects\nuitka\Nuitka\setup.py install
rem python -m pipenv install -e git+https://github.com/Nuitka/Nuitka.git@factory#egg=nuitka