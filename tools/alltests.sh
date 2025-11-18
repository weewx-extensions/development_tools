#! /bin/bash
#
#    Copyright (c) 2025 Rich Bell <bellrichm@gmail.com>
#
#    See the file LICENSE.txt for your full rights.
#
export PYENV_VERSION=$WEEWX_PYENV_VERSION
export PYTHONPATH=$WEEWX_PYTHONPATH

pytest bin/user/tests/unit

pytest bin/user/tests/func

pytest bin/user/tests/integ

pytest bin/user/tests/e2e