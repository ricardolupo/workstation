name 'workstation'
maintainer 'Ricardo Lupo'
maintainer_email 'Ricardo@chef.io'
license 'Apache v2'
description 'Installs/Configures workstation'
long_description 'Installs/Configures workstation'
version '0.2.2'
chef_version '>= 13.0'

# The `issues_url` points to the location where issues for this cookbook are
# tracked.  A `View Issues` link will be displayed on this cookbook's page when
# uploaded to a Supermarket.
#
issues_url 'https://github.com/ricardolupo/workstation/issues'

# The `source_url` points to the development repository for this cookbook.  A
# `View Source` link will be displayed on this cookbook's page when uploaded to
# a Supermarket.
#
source_url 'https://github.com/ricardolupo/workstation'
depends 'homebrew'
depends 'chocolatey'
