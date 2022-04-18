#!/usr/bin/env bash

# redirect stdout/stderr to a file
exec &> /var/log/foreman/foreman_hyperv.log

##################################################################################Test script to develop foreman_hyperv rpm package. This script comes with#### ##now guarentees of any kind. Use at your own risk.###
##This MUST be ran as root.###
###############################################################################


yum deplist [rubygem-gssapi.noarch] [ruby-devel] [rubygems-devel.noarch] [gcc-toolset-10*] [perl-NTLM.noarch] [libntlm-devel] [libntlm gssntlmssp] [rubygem-httpclient] [puppet-bolt] [rubygem-httpclient] [rubygem-rb-inotify.noarch] [rubygem-openscap.noarch] [RPM Development Tools] [Development Tools] [Graphical Administration Tools] [System Tools] [.NET Core Development]

dnf -y install rubygem-gssapi.noarch ruby-devel rubygems-devel.noarch gcc-toolset-10* perl-NTLM.noarch libntlm-devel libntlm gssntlmssp rubygem-httpclient puppet-bolt rubygem-httpclient rubygem-rb-inotify.noarch rubygem-openscap.noarch

dnf -y groupinstall 'RPM Development Tools' 'Development Tools' 'Graphical Administration Tools' 'System Tools' '.NET Core Development'

scl enable gcc-toolset-10 -- gem install gyoku --ignore-dependencies

scl enable gcc-toolset-10 -- gem install nori --ignore-dependencies 

scl enable gcc-toolset-10 -- gem install rubyntlm --ignore-dependencies

scl enable gcc-toolset-10 -- gem install winrm --ignore-dependencies

scl enable gcc-toolset-10 -- gem install ffi --ignore-dependencies

scl enable gcc-toolset-10 -- gem install foreman_hyperv --ignore-dependencies

scl enable gcc-toolset-10 -- gem install fog-hyperv 

touch /usr/share/foreman/bundler.d/foreman_hyperv.rb

echo "gem 'foreman_hyperv' 
gem 'foreman_hyperv'
gem 'gssapi'
gem 'ffi'
gem 'gyoku'
gem 'nori'
gem 'fog-hyperv'
gem 'httpclient'
gem 'rubyntlm'
gem 'little-plugger'
gem 'winrm'" > /usr/share/foreman/bundler.d/foreman_hyperv.rb

systemctl reboot
