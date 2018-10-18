#
# Cookbook:: workstation
# Recipe:: mac_os
#
# Copyright:: 2018, The Authors, All Rights Reserved.


include_recipe 'homebrew::default'

include_recipe 'homebrew::install_formulas'

node['workstation']['casks'].each do | cask |
  homebrew_cask cask do
    action :install
  end
end

include_recipe 'workstation::atom'
