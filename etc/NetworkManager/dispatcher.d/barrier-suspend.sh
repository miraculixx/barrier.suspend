#!/bin/bash
# adopted from https://askubuntu.com/a/1111656
interface=$1
event=$2
target_if=$(nmcli device | grep ether | xargs | cut -d ' ' -f1)
if [ $interface == $target_if ] && [ $event != "up" ]; then
  killall barrier barrier
  killall input-leap
fi
