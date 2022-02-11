# hb-updater
Simple bash script to run automatic updates to homebridge via cron (as root). For Example, I have mine set to:

0 0 */3 * * /bin/bash /home/homebridge/hbp-updater.sh > /var/lib/homebridge/homebridge_updater.log


For more information see the manual pages of crontab(5) and cron(8)
----
