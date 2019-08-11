#/bin/bash
mkdir /usr/share/hassio/homeassistant/custom_components
cd /usr/share/hassio/homeassistant/custom_components
git clone https://github.com/custom-components/hacs.git hacs_temp
cd hacs_temp
git checkout $(git describe --tags --always $(git rev-list --tags --max-count=1000) | grep -e "[0-9]\+\.[0-9]\+\.[0-9]\+$" | head -n 1)
cd ../
cp -r hacs_temp/custom_components/hacs hacs
rm -R hacs_temp
