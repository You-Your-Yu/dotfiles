#!/bin/zsh
e=$(networksetup -getsocksfirewallproxy wi-fi | grep "No")
if [ -n "$e" ]; then
  echo "Turning on proxy"
  networksetup -setsocksfirewallproxystate wi-fi on
  echo 'display notification "ON" with title "proxy.sh"'  | osascript
else
  echo "Turning off proxy"
  networksetup -setsocksfirewallproxystate wi-fi off
  echo 'display notification "OFF" with title "proxy.sh"' | osascript
fi
