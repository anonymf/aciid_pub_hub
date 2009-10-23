#!/bin/bash
# screen-check.sh - Screen process and status check 
# Use: add "source screen-check.sh" in .bashrc
# this will display screen status on login.
# Version 0.1 Copyright (C) 2007 aciid91@gmail.com
# Licensed under GNU GPL http://www.gnu.org/licenses/gpl.txt
 
GREEN="echo -e \\033[1;32m"
RED="echo -e \\033[1;31m" 
NORMAL="\\033[0;39m"

echo -e "$NORMAL\nScreen Process:"
case `screen -list` in
*'There'*) $GREEN "Screen Running" $NORMAL;;
*'No Socket'*) $RED "Screen not running" $NORMAL;;
esac

echo -e "Screen Status:"
case `screen -list` in
*'Attached'*) $RED "Screen Attached" $NORMAL;;
*'Detached'*) $GREEN "Screen Detached" $NORMAL;;
*) $RED "Screen dead" $NORMAL;;
esac
