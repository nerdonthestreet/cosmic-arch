#!/bin/bash

# Reset the directory.
echo "Warning: This script will reset the directory in five seconds."
sleep 5
git reset --hard
git clean -ffd # Two f's to remove obsolete git repos.

for i in cosmic-applets cosmic-applibrary cosmic-bg cosmic-comp cosmic-launcher cosmic-osd cosmic-panel cosmic-session cosmic-settings cosmic-settings-daemon xdg-desktop-portal-cosmic
do
    echo "Building $i..."
    cd PKGBUILDs/$i
    makepkg -s
    cd ../..
done
