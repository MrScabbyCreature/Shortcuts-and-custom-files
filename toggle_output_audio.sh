audio_card=$(pactl list short sinks | grep 'SUSPENDED' | awk '{print $1}')
# # echo $to_index
# # to_index=$(echo $to_index | cut -d " " -f 1)
# applications=$(pactl list short sink-inputs | awk '{print $1}')
#
# # echo $to_index
# # echo $from_index
# # pactl list short sinks
#
# for sink in $applications;
# do
#     echo $sink;
#     pactl move-sink-input $sink $audio_card
# done
# pactl set-default-sink $audio_card

audio_card=$(pactl list short sinks | tail -1 | awk '{print $1}')
pactl set-default-sink $audio_card
