#!/bin/bash
#set -x

# USER: homebridge
# DIR: /usr
# CMD: sudo -E -n npm install -g <plugin>@0.5.55

#Create a txt fille list of all homebridge plugins
pushd /usr
PLUGIN_LIST="/tmp/hb-plugins"

#Create a txt file and specific plugins from updates out the list of all homebridge plugins being updated
ls -ld lib/node_modules/homebridge* | awk '{print $9}' | cut -d '/' -f3 > /tmp/hb-plugins
sed '0,/homebridge/{/homebridge/d;}' /tmp/hb-plugins
echo $PLUGIN_LIST

#Update the plugins on the list
while IFS= read -r plugin;do
  sudo -E -n npm install -g $plugin@latest;
done < $PLUGIN_LIST

echo -en 'All the plugins that were last updated: '\n && cat $PLUGIN_LIST > /var/lib/homebridge/homebridge_updater.log

#restart the hb service
hb-service restart

#Cleanup
rm -f $PLUGIN_LIST
