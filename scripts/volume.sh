#/ibin/bash

## Audio Controle + notification

getvol() {
get_vol=$(wpctl get-volume @DEFAULT_SINK@ | awk '{ print  $2*100 }')

if [ $get_vol -gt 100 ]
	then
		set notification=$(dunstify -t 1000 -u critical "Volume: "$get_vol -h string:x-dunst-stack-tag:"volume" -h int:value:"$get_vol")
	else
		if [ $get_vol -ge 50 ]
			then
				set notification=$(dunstify -t 700 -u normal "Volume: "$get_vol -h string:x-dunst-stack-tag:"volume" -h int:value:"$get_vol")
			else
				set notification=$(dunstify -t 700 -u low "Volume: "$get_vol -h string:x-dunst-stack-tag:"volume" -h int:value:"$get_vol")
		fi
fi
}


if [ $1 == '+' ]
then
	wpctl set-volume @DEFAULT_SINK@ 2.5%+
	getvol
elif [ $1 == '-' ]
then
	wpctl set-volume @DEFAULT_SINK@ 2.5%-
	getvol
else
	wpctl set-mute @DEFAULT_SINK@ toggle
fi

&&
