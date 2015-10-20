name             "t3-chef-client"
maintainer       "TYPO3 Association"
maintainer_email "steffen.gebert@typo3.org"
license          "Apache 2.0"
description      "A wrapper cookbook for chef-client"
long_description IO.read(File.join(File.dirname(__FILE__), "README.md"))

version          "0.3.11"

depends          "chef-client", "= 3.1.0"
depends          "chef_handler"
depends          "omnibus_updater", "= 1.0.4"
depends          "runit"