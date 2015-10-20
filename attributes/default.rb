# we run chef through cron every 30 minutes (with a splay of up to 10 minutes)
default[:chef_client][:init_style] = "none"
default[:chef_client][:cron][:hour] = "*"
default[:chef_client][:cron][:minute] = "0,30"
default[:chef_client][:cron][:log_file] = "/var/log/chef/client.log"
default[:chef_client][:splay] = "600"

default[:chef_client][:config][:ssl_verify_mode] = ":verify_peer"
default[:chef_client][:config][:chef_server_url] = "https://chef.typo3.org"

default[:omnibus_updater][:version] = "11.18.12"
# default[:omnibus_updater][:direct_url] = "https://opscode-omnibus-packages.s3.amazonaws.com/debian/6/x86_64/chef_11.12.0-1_amd64.deb"
default[:omnibus_updater][:cache_dir] = File.join(Chef::Config[:file_cache_path], "chef-client")
