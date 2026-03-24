#!/bin/bash
/usr/bin/python3 -m venv ./.venv
source ./.venv/bin/activate
python3 .venv/bin/pip install --upgrade pip
.venv/bin/pip install -r requirements.txt
jupyter lab

