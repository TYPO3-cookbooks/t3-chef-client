include_recipe "chef-client::config"
include_recipe "chef-client::cron"

include_recipe "omnibus_updater"

include_recipe "runit"
runit_service "chef-client" do
  action :disable
  not_if { node[:platform_version] == "10.04"} # srv111 and 112 are just too old, they don't have runit (or so)
end