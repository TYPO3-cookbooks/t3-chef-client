# Description

Wrapper cookbook for the [chef-client](https://supermarket.chef.io/cookbooks/chef-client) cookbook, which installs Chef-Client.

[![Build Status master branch](https://chef-ci.typo3.org/job/TYPO3-cookbooks/job/t3-chef.client/branch/master/badge/icon)](https://chef-ci.typo3.org/job/TYPO3-cookbooks/job/t3-chef-client/branch/master/)

# Requirements

## Platform:

*No platforms defined*

## Cookbooks:

* chef-client (= 4.3.3)
* chef_handler
* omnibus_updater (= 1.1.0)
* runit

# Attributes

* `node['omnibus_updater']['version']` - Version of chef-client to install. Defaults to `12.19.36`.
* `node['omnibus_updater']['cache_dir']` - Cache path for chef-client package. Defaults to `File.join(Chef::Config[:file_cache_path], 'chef-client')`.
* `node['chef_client']['init_style']` - Do not run chef-client as service. Defaults to `none`.
* `node['chef_client']['cron']['hour']` - Run chef-client every hour .. Defaults to `*`.
* `node['chef_client']['cron']['minute']` - ... at 0 and 30 minutes. Defaults to `0,30`.
* `node['chef_client']['cron']['log_file']` - Path to log file. Defaults to `/var/log/chef/client.log`.
* `node['chef_client']['cron']['append_log']` - Append to log file. Defaults to `true`.
* `node['chef_client']['splay']` - Add a splay to prevent all nodes running chef-client at the same second. Defaults to `600`.
* `node['chef_client']['log_rotation']['postrotate']` - avoid the restart of the chef-client service that the upstream cookbook initiates (see issue chef-client#284). Defaults to `nil`.
* `node['chef_client']['config']['ssl_verify_mode']` - Verify the SSL certificate of the Chef Server. Defaults to `:verify_peer`.
* `node['chef_client']['config']['chef_server_url']` - URL of our Chef Server. Defaults to `https://chef.typo3.org`.

# Recipes

* t3-chef-client::default
* t3-chef-client::knife-lastrun

Chef-Client Version Updates
---------------------------

Beware when updating the chef-client version in `attributes/versions.rb`: When running this cookbook through the CI system with a different version, then the chef run will be killed after installing the target version.

Therefore, update the [jenkins-chefci](https://github.com/TYPO3-cookbooks/jenkins-chefci/blob/master/attributes/versions.rb) cookbook first to the target version of chef-client and then update this cookbook.


# License and Maintainer

Maintainer:: TYPO3 Association (<steffen.gebert@typo3.org>)

License:: Apache 2.0
