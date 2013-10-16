#
# Cookbook Name:: ruby-headers
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#


ruby_remove_system = package "ruby" do
   action :nothing
end
ruby_devel = package "ruby-devel" do
   action :nothing
end

ruby_remove_system.run_action(:remove)
#ruby_devel.run_action(:install)
