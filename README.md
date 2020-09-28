raspi-hat-waveshare-7600x
==========================
Waveshare SIM7600 4G Hat initialization script

Installation
------------

Install Debian package
```
$ DEB_PKG_TMP="$(mktemp).deb"
$ curl -L https://github.com/AlmirKadric/raspi-hat-waveshare-7600x/releases/download/v0.1.0-1/raspi-hat-waveshare-7600x_0.1.0-1_armhf.deb -o "${DEB_PKG_TMP}"
$ sudo apt install "${DEB_PKG_TMP}"
```

Check service status
```
$ sudo systemctl status sim7600_4G_hat_init.timer
● sim7600_4G_hat_init.timer - Timer for the Waveshare SIM7600 4G Hat initialization script
   Loaded: loaded (/etc/systemd/system/sim7600_4G_hat_init.timer; enabled; vendor preset: enabled)
   Active: active (running) since Fri 2020-09-11 11:17:57 BST; 4s ago
  Trigger: n/a
```

Packaging
---------
Dependencies (macOS)
```
$ brew install gnu-tar
```

Package
```
$ bash package.sh [version] [iteration]
```

TODO
----
 * check connect ready state instead of plain "AT"

License
-------
MIT