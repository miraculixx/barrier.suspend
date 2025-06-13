install:
	sudo cp -r ./etc /
	sudo cp -r ./usr /

use-systemd:
	systemctl enable systemd-networkd networkd-dispatcher

