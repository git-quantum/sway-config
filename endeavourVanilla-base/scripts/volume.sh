#/bin/bash

## Audio Controle + notification

getvol() {
get_vol=$(wpctl get-volume @DEFAULT_SINK@ | awk '{ print  $2*100 }')

if [ $get_vol > 100 ]
	then
		set notification=$(dunstify -u critical "Volume: " -h int:value:$get_vol)
	else
		if [ $get_vol >= 50 ]
			then
				set notification=$(dunstify -u normal "Volume: " -h int:value:$get_vol)
			else
				set notification=$(dunstify -u low "Volume: " -h int:value:$get_vol)
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


