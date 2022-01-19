#!/bin/bash

if [ ! -f Pipfile ]; then
    pipenv --three
fi

pipenv install
pipenv install --dev ipykernel
pipenv run python -m ipykernel install --user --name=python3-pipenv

/usr/local/bin/jupyter notebook --config=./conf/jupyter.py
