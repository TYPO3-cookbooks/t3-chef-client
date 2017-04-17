#<> Version of chef-client to install
default['omnibus_updater']['version'] = '12.19.36'
#<> Cache path for chef-client package
default['omnibus_updater']['cache_dir'] = File.join(Chef::Config[:file_cache_path], 'chef-client')
#<> Do not run chef-client as service
default['chef_client']['init_style'] = 'none'
#<> Run chef-client every hour ..
default['chef_client']['cron']['hour'] = '*'
#<> ... at 0 and 30 minutes
default['chef_client']['cron']['minute'] = '0,30'
#<> Path to log file
default['chef_client']['cron']['log_file'] = '/var/log/chef/client.log'
#<> Append to log file
default['chef_client']['cron']['append_log'] = true
#<> Add a splay to prevent all nodes running chef-client at the same second
default['chef_client']['splay'] = '600'
#<> avoid the restart of the chef-client service that the upstream cookbook initiates (see issue chef-client#284)
default['chef_client']['log_rotation']['postrotate'] = nil
#<> Verify the SSL certificate of the Chef Server
default['chef_client']['config']['ssl_verify_mode'] = ':verify_peer'
#<> URL of our Chef Server
default['chef_client']['config']['chef_server_url'] = 'https://chef.typo3.org'

