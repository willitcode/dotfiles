#!/usr/bin/python3

from os import system
from os import popen
from time import sleep

# We have to set theme to something because otherwise python will throw a fit
theme = 'something useless'

# Change wallpaper according to time!
while True:
    Time = int(str(popen('date +%H').readlines()[0]))
    if (Time > 19) or (Time < 8):
        if theme != 'dark':
            print('attempting to go to night theme')
            system('plasma-theme -c ~/.local/share/color-schemes/BreezeDarkWithRed.colors')
            #system('sed -i "s/^gtk-theme-name.*/gtk-theme-name=Breeze/" /home/nacl10/.config/gtk-3.0/settings.ini')
            system('notify-send -u low -a "Automatic theme switch" "Set theme to dark"')
            #system('plasmashell --replace &')
            theme = 'dark'
    else:
        if theme != 'light':
            print('attempting to go to day theme')
            system('plasma-theme -c ~/.local/share/color-schemes/BreezeWithRed.colors')
            system('notify-send -u low -a "Automatic theme switch" "Set theme to light"')
            #system('plasmashell --replace &')
            theme = 'light'
    sleep(10)
