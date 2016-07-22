#
# Cookbook Name:: Haproxy
# Spec:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

require 'spec_helper'

describe 'Haproxy::default' do
  context 'When all attributes are default, on an unspecified platform' do
    let(:chef_run) do
      runner = ChefSpec::ServerRunner.new
      runner.converge(described_recipe)
    end

    it 'create a file nd content' do
      expect(chef_run).to create_file('/tmp/helloworld.txt')
    end

    it 'install haproxy' do
      expect(chef_run).to install_package('haproxy')
    end
  end
end
