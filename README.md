# hb-updater
Simple bash script to run automatic updates to homebridge via cron (as root). For Example:

Edit this file to introduce tasks to be run by cron.

Each task to run has to be defined through a single line
indicating with different fields when the task will be run
and what command to run for the task

To define the time you can provide concrete values for
minute (m), hour (h), day of month (dom), month (mon),
and day of week (dow) or use '*' in these fields (for 'any').

Notice that tasks will be started based on the cron's system
daemon's notion of time and timezones.

Output of the crontab jobs (including errors) is sent through
email to the user the crontab file belongs to (unless redirected).

For more information see the manual pages of crontab(5) and cron(8)
----

0 0 */3 * * /bin/bash /home/homebridge/hbp-updater.sh > /var/lib/homebridge/homebridge_updater.log
