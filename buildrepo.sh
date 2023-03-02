#!/bin/bash

for i in cosmic-applet-host cosmic-applets cosmic-applibrary cosmic-bg cosmic-comp cosmic-launcher cosmic-osd cosmic-panel cosmic-session cosmic-settings cosmic-settings-daemon xdg-desktop-portal-cosmic
do
    echo "Building $i..."
    cd PKGBUILDs/$i
    makepkg -s
    cd ../..
done
