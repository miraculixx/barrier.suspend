#!/bin/bash
# run this from /usr/lib/systemd/system-sleep/pre-suspend.sh
# adopted from https://www.addictivetips.com/ubuntu-linux-tips/run-scripts-and-commands-on-suspend-and-resume-on-linux/
if [ "${1}" == "pre" ]; then
  killall barrier barrierc
  killall input-leap
  killall input-leapc
fi