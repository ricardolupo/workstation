#
# Cookbook:: workstation
# Recipe:: mac_os
#
# Copyright:: 2018, The Authors, All Rights Reserved.


include_recipe 'homebrew::default'

include_recipe 'homebrew::install_formulas'

%w( 'zoom' 'dropbox' 'google-chrome' 'chef/chef/chefdk' 'vagrant' 'atom' 'iterm2' 'visual-studio-code' ).each do | cask |
  homebrew_cask cask do
    action :install
  end
end

["linter",
"linter-ui-default",
"language-chef",
"linter-chefstyle",
"language-habitat",
"language-inspec",
"linter-cookstyle",
"git-status",
"linter-foodcritic",
"language-viml"].each do | atompkg |
  execute "Install atom package #{atompkg}" do
    command "apm install #{atompkg}"
  end
end
