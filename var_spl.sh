#!/bin/bash
echo "All variables passed to the script:$@"
echo "All variables passed to the script:$*"
echo "Script_name :$0"
echo "CURRENT_WORKING_DIRECTORY:$PWD"
echo "CURRENT_HOME_DIRECTORY:$HOME"
echo "PID FOR THIS SCRIPT : $$"
sleep 10&
echo "PID for last executed script :$!"