#
# Copyright 2022 YOUR NAME
#
# All Rights Reserved.
#

name "universal-package"
maintainer "Progress Software, Inc."
homepage "https://chef.io"

install_dir "/tmp/chef-pkgs"

build_version Omnibus::BuildVersion.semver
build_iteration 1

# Creates required build directories
dependency "preparation"
dependency "package-creator"

# universal-package dependencies/components
# dependency "somedep"

exclude "**/.git"
exclude "**/bundler/git"
