# Sway-config


## Dependencies:<br />
### autotiling: https://pypi.org/project/autotiling/1.8/#files 
### static roboto mono font: https://fonts.google.com/specimen/Roboto+Mono
### flashfocus: https://github.com/fennerm/flashfocus
### snapper
### awesome font

------------------------------------------------------------------------------------------------------------------------------------------------------

## Useful/inspirational links:<br />
##### Fedora things: https://gist.github.com/Surendrajat/ad607b13ece2a302d30fb5746f0e1ffe
##### Autotiling git: https://github.com/nwg-piotr/autotiling
##### Learn to edit waybar: https://www.youtube.com/@diego_sandoval
##### Font cheatsheet: https://fontawesome.com/v5/cheatsheet
##### Setup btrfs F38: https://sysguides.com/install-fedora-38-with-snapshot-and-rollback-support/#2-3-create-the-additional-subvolumes
##### Manjaro waybar module: https://gitlab.manjaro.org/manjaro-arm/applications/arm-profiles/-/blob/master/overlays/sway/etc/skel/.config/waybar/config

------------------------------------------------------------------------------------------------------------------------------------------------------

## Gaming setup:<br />
##### 1) Install Steam
######  - Add third party repo: # dnf install fedora-workstation-repositories-38-2.fc38.x86_64
######  - Install the app: # dnf install steam
##### 2) Install gamescope
######  - Install the app: # dnf install gamescope
##### 3) Install goverlay (mangohud included as a dependency)
######  - Install the app: # dnf install goverlay
##### 4) Install gamemode (32 and 64bits version)
######  - Install both apps: # dnf install gamemode.x86_64 gamemode.i686
##### 5) Set games launch options:
######  - Add this line: gamescope -w 1706 -h 960 -W 2560 -H 1440 -U -f -e -- mangohud gamemoderun %command%
