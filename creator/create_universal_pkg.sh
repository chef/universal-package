#!/bin/sh -v

echo "${EXPEDITOR_CHANNEL}"
echo "${EXPEDITOR_VERSION}"
echo "${EXPEDITOR_PRODUCT_NAME}"
echo "${EXPEDITOR_PRODUCT_KEY}"

mkdir stage

pushd stage

curl -O https://packages.chef.io/files/current/chef/18.0.92/mac_os_x/11/chef-18.0.92-1.x86_64.dmg
hdiutil attach -quiet chef-18.0.92-1.x86_64.dmg
cp /Volumes/Chef\ Infra\ Client/chef-18.0.92-1.x86_64.pkg ./
hdiutil detach -quiet /Volumes/Chef\ Infra\ Client
rm chef-18.0.92-1.x86_64.dmg

curl -O https://packages.chef.io/files/current/chef/18.0.92/mac_os_x/11/chef-18.0.92-1.arm64.dmg
hdiutil attach -quiet chef-18.0.92-1.arm64.dmg
cp /Volumes/Chef\ Infra\ Client/chef-18.0.92-1.arm64.pkg ./
hdiutil detach -quiet /Volumes/Chef\ Infra\ Client
rm chef-18.0.92-1.arm64.dmg

popd

mkdir -p /opt/universal-package/chef-pkgs
cp ./stage/* /opt/universal-package/chef-pkgs/
