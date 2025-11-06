#! /bin/bash
#
#    Copyright (c) 2025 Rich Bell <bellrichm@gmail.com>
#
#    See the file LICENSE.txt for your full rights.
#

$WEEWX_TOOL_PATH/integtests.sh

while inotifywait -e modify $WEEWX_TOOL_PATH/watchintegtests.sh $WEEWX_TOOL_PATH/integtests.sh bin/user/$WEEWX_MODULE_NAME.py bin/user/tests/integ
do
    $WEEWX_TOOL_PATH/integtests.sh
done
