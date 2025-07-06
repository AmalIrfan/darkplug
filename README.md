On amd laptops with `systemd` on startup set brightness to 0 and battery
charge threshold to 80.

It uses a config script `darkplug.conf` and a startup script `darkplug.sh`
which is run by the service `darkplug.service` after bootup.

To install/uninstall using `dpkg` (debian based systems):

```sh
cd debian
./build.sh
sudo dpkg -i darkplug.deb

# Clean
rm -r build darkplug.deb

# Uninstall
sudo dpkg -r darkplug

# Purge (Like uninstall, but also removes config file)
sudo dpkg -P darkplug
```

To install/uninstall manually

```sh
sudo su
cp darkplug.conf /etc/darkplug.conf
cp darkplug.sh /usr/bin/darkplug.sh
cp darkplug.service /lib/systemd/system/darkplug.service
systemctl daemon-reload
systemctl enable darkplug.service
systemctl start darkplug.service

# Uninstall
sudo su
systemctl stop darkplug.service
systemctl disable darkplug.service
rm /lib/systemd/system/darkplug.service
systemctl daemon-reload
rm /usr/bin/darkplug.sh
rm /etc/darkplug.conf
```
