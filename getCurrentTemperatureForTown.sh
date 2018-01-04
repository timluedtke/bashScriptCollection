#!/bin/bash
echo $(curl -s wttr.in/YOURTOWN | sed -r "s:\x-14B\[[0-9;]*[mK]::g" | grep -o -m 1 '[0-9].*°C' | sed -r "s:\x1B\[[0-9;]*[mK]::g")
