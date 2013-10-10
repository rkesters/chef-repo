#
# Cookbook Name:: redis
# Recipe:: default
#
# Copyright (C) 2013 YOUR_NAME
# 
# All rights reserved - Do Not Redistribute
#

include_recipe "redisio::install"
include_recipe "redisio::enable"
include_recipe "simple_iptables"

simple_iptables_rule "redis" do
  rule "--proto tcp --dport 6379"
  jump "ACCEPT"
end
