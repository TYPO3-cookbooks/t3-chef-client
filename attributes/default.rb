# we run chef through cron every 30 minutes (with a splay of up to 10 minutes)
node.override[:chef_client][:init_style] = "none"
node.override[:chef_client][:cron][:hour] = "*"
node.override[:chef_client][:cron][:minute] = "0,30"
node.override[:chef_client][:cron][:log_file] = "/var/log/chef/client.log"
node.override[:chef_client][:splay] = "600"

node.override[:chef_client][:config][:ssl_verify_mode] = ":verify_peer"
node.override[:chef_client][:config][:chef_server_url] = "https://chef.typo3.org"

node.override[:omnibus_updater][:version] = "11.12.2"
# node.override[:omnibus_updater][:direct_url] = "https://opscode-omnibus-packages.s3.amazonaws.com/debian/6/x86_64/chef_11.12.0-1_amd64.deb"
node.override[:omnibus_updater][:cache_dir] = File.join(Chef::Config[:file_cache_path], "chef-client")
