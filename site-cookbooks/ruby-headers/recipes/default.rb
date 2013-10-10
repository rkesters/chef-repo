#
# Cookbook Name:: ruby-headers
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#


ruby_devel = package "ruby-devel" do
   action :nothing
end

ruby_devel.run_action(:install)
