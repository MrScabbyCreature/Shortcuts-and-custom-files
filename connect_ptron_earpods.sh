echo "connect F4:4E:FD:00:03:5F" | bluetoothctl
#
# sleep 5
#
# audio_card=$(pactl list short sinks | tail -1 | awk '{print $1}')
# pactl set-default-sink $audio_card
