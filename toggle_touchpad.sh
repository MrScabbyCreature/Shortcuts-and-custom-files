x=$(cat ~/.custom_scripts/current_touchpad)

if [ $x = 1 ]
then
    y=0
else
    y=1
fi

echo $y > ~/.custom_scripts/current_touchpad
synclient TouchpadOff=$y
