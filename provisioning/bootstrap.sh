#!/bin/sh

export DEBIAN_FRONTEND=noninteractive

# Enable Puppet package repos
wget -q https://apt.puppetlabs.com/puppet5-release-xenial.deb
dpkg -i puppet5-release-xenial.deb
apt-get update

# Install Puppet
apt-get -y install puppet-agent

# Install necessary Puppet modules
puppet module install puppetlabs-apt
puppet module install puppetlabs-ntp
puppet module install puppetlabs-vcsrepo
