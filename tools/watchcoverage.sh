#! /bin/bash
#
#    Copyright (c) 2025 Rich Bell <bellrichm@gmail.com>
#
#    See the file LICENSE.txt for your full rights.
#
$WEEWX_TOOL_PATH/coverage.sh

while inotifywait -e modify $WEEWX_TOOL_PATH/watchcoverage.sh $WEEWX_TOOL_PATH/coverage.sh bin/user/$WEEWX_MODULE_NAME.py bin/user/tests/unit
do
    $WEEWX_TOOL_PATH/coverage.sh
done