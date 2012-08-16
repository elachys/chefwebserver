pkg = value_for_platform(
    [ "centos", "redhat", "fedora" ] => {"default" => "php53-mcrypt"}, 
    "default" => "php5-mcrypt"
  )

package pkg do
  action :install
end
