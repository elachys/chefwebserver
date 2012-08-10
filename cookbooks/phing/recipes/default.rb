#
# Cookbook Name:: phing
#
# Recipe:: default
#

include_recipe "php"

channel = "pear.phing.info"
execute "pear channel-discover #{channel}" do
  not_if "pear list-channels | grep #{channel}"
end

execute "pear install phing/phing" do
  not_if "pear list -c phing | grep '^phing '"
end

execute "pear -d preferred_state=alpha install Services_Amazon_S3" do
	not_if "pear list | grep '^Services_Amazon_S3 '"
end