#!/bin/bash
# login.sh - login information
# Use: add "login.sh" in .bashrc
# this will display screen status on login.
# Version 0.1 Copyright (C) 2007 aciid91@gmail.com
# Licensed under GNU GPL http://www.gnu.org/licenses/gpl.txt

  echo -e "\nYou are logged on $HOSTNAME\nLast login, Verify!:" ; last | grep -v still | grep -m 1 $USER
  echo -e "\nCurrent date :$NC " ; date
  echo -e "\nAdditionnal information:$NC " ; uname -sirp
  echo -e "\nMachine stats :$NC" ; uptime
