#
# Cookbook:: workstation
# Recipe:: mac_os
#
# Copyright:: 2018, The Authors, All Rights Reserved.

include_recipe 'homebrew::default'

node['workstation']['casks'].each do |cask|
  homebrew_cask cask do
    action :install
  end
end

include_recipe 'homebrew::install_formulas'

include_recipe 'workstation::atom'

cookbook_file "#{node['workstation']['homedir']}/.iterm2_shell_integration.bash" do
  source 'iterm2_shell_integration.bash'
  owner node['workstation']['user']
  group 'staff'
  mode '0755'
  action :create
end

#include bash_profile and bashrc ?
