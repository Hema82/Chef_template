

#
# Cookbook Name:: chef_template
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

# package 'haproxy' do

package node['package']['name'] do
    action :install
end

template '/etc/haproxy/haproxy.cfg' do
    source 'haproxy.cfg.erb'
    mode '0644'
    action :create
end

service 'haproxy' do
    action [:enable, :start]
end
