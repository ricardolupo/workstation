# Policyfile.rb - Describe how you want Chef to build your system.
#
# For more information on the Policyfile feature, visit
# https://docs.chef.io/policyfile.html

# A name that describes what the system you're building with Chef does.
name 'workstation'

# Where to find external cookbooks:
default_source :supermarket
default_source :chef_repo, "."

# run_list: chef-client will run these recipes in the order specified.
run_list 'workstation::default'

# Specify a custom source for a single cookbook:
# cookbook 'example_cookbook', path: '../cookbooks/example_cookbook'

cookbook 'homebrew', '~> 5.0.8', :supermarket
cookbook 'chocolatey', '~> 2.0.1', :supermarket
cookbook 'atom', '~> 0.2.0', :supermarket
cookbook 'workstation', '>= 0.0.0', path: '.'

default['workstation']['user'] = ENV['user']
default['workstation']['homedir'] = ENV['home']

default['homebrew']['formulas'] = [
  'awscli',
  'azure-cli',
  'kubectl',
  'git',
  'bash-completion',
  'jq',
  'python',
  'packer',
  'packer-completion',
  'terraform',
  'tree',
  'habitat-sh/habitat/hab',
  'vagrant-completion',
  'chef/okta_aws/okta_aws',
  'lastpass-cli',
  'kubernetes-helm',
]

default['workstation']['casks'] = [
  'skitch',
  'zoom',
  'dropbox',
  'google-chrome',
  'chef/chef/chefdk',
  'vagrant',
  'atom',
  'iterm2',
  'visual-studio-code',
  'minikube',
  'google-cloud-sdk',
  'visual-studio-code',
]

default['workstation']['atom_pkg'] = [
  'linter',
  'linter-ui-default',
  'language-chef',
  'linter-chefstyle',
  'language-habitat',
  'language-inspec',
  'linter-cookstyle',
  'git-status',
  'linter-foodcritic',
  'language-viml',
  'intentions',
  'busy-signal',
]

default['workstation']['choco_pkgs'] = [
  '7zip',
  'adobereader',
  'atom',
  'conemu',
  'divvy',
  'docker',
  'f.lux',
  'filezilla',
  'git',
  'poshgit',
  'googlechrome',
  'googledrive',
  'notepadplusplus',
  'putty',
  'slack',
  'steam',
  'vlc',
  'windirstat',
  'winscp',
  'wireshark',
  'zoom',
]
