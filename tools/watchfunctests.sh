#! /bin/bash
#
#    Copyright (c) 2025 Rich Bell <bellrichm@gmail.com>
#
#    See the file LICENSE.txt for your full rights.
#

$WEEWX_TOOL_PATH/functests.sh

while inotifywait -e modify $WEEWX_TOOL_PATH/watchfunctests.sh $WEEWX_TOOL_PATH/functests.sh bin/user/$WEEWX_MODULE_NAME.py bin/user/tests/func
do
    $WEEWX_TOOL_PATH/functests.sh
done