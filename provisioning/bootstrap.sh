#!/bin/sh

export DEBIAN_FRONTEND=noninteractive

apt-get -y -qq update
apt-get -y -qq dist-upgrade

wget -q https://apt.puppetlabs.com/puppet5-release-xenial.deb
dpkg -i puppet5-release-xenial.deb
apt-get -y -qq update
apt-get -y -qq install puppet-agent
