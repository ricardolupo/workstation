#
# Cookbook:: workstation
# Recipe:: default
#
# Copyright:: 2018, Ricardo Lupo, All Rights Reserved.


case node['platform']
when 'mac_os_x'
  include_recipe 'workstation::mac_os'
when 'windows'
  include_recipe 'workstation::windows'
end
