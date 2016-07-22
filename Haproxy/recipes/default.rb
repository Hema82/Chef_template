#
# Cookbook Name:: Haproxy
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

file '/tmp/helloworld.txt' do
  content 'hello world! This is my first chef book'
  action :create
end

package 'haproxy' do
  action :install
end
