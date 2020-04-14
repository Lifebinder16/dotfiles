#!/usr/bin/bash

i3status -c $HOME/.config/i3status/config  | (

  read line && 
  echo $line && 
  read line && 
  echo $line &&
  while :
  do

    sleep 1
    read line

    str="["

    # str='[{"full_text":"privet","color":"#FFFFFF"}]'
    # echo "$str" || exit 1

    # vol=`amixer -M -c 0 get Master | grep Mono: | cut -d [ -f 2 | tr -d ] | tr -d \ `
    vol=`ruby $HOME/.config/i3status/smoke-counter.rb \ `

    str="$str{ \"full_text\": \"\" , \"separator\": false, \"separator_block_width\": 4,     \"color\" : \"#ffffff\"},"
    str="$str{ \"full_text\": \"${vol}\" , \"color\" : \"#fbf1c7\", \"align\": \"center\" , \"min_width\":100 },"
    echo "${line/[/$str}" || exit 1

  done

)

# i3status | while :
# do
#     sleep 2
#     read line
#     smoke=`ruby $HOME/.config/i3status/smoke-counter.rb`
#     echo "GMAIL $smoke | $line" || exit 1
# done
