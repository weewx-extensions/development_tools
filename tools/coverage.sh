#! /bin/bash
#
#    Copyright (c) 2025 Rich Bell <bellrichm@gmail.com>
#
#    See the file LICENSE.txt for your full rights.
#
export PYENV_VERSION=$WEEWX_PYENV_VERSION
export PYTHONPATH=$WEEWX_PYTHONPATH

coverage run --branch -m pytest bin/user/tests/unit; 

coverage html --include bin/user/$WEEWX_MODULE_NAME.py
