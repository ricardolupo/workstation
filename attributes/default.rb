default['workstation']['user'] = ENV['user']
default['workstation']['homedir'] = ENV['home']

default['homebrew']['formulas'] = [
  'awscli',
  'azure-cli',
  'kubectl',
  'docker',
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
