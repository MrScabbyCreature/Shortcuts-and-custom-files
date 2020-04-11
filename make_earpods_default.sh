audio_card=$(pactl list short sinks | tail -1 | awk '{print $1}')
pactl set-default-sink $audio_card
