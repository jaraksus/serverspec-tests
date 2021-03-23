require 'spec_helper'

# python 3.8+

describe package('python3.8'), :if => os[:family] == 'ubuntu' do
  it { should be_installed }
end

# golang

describe file('/usr/local/go'), :if => os[:family] == 'ubuntu' do
	it { should be_directory }
end

describe command('go version') do
  its(:stdout) { should contain('1.15.9') }
  its(:exit_status) { should eq 0 }
end

# kubectl

describe command('kubectl version') do
  its(:exit_status) { should eq 0 }
end

# gcloud

describe command('gcloud version') do
  its(:exit_status) { should eq 0 }
end

# minkube

describe command('minikube version') do
  its(:exit_status) { should eq 0 }
end

# kubebuilder

describe file('/usr/local/kubebuilder'), :if => os[:family] == 'ubuntu' do
	it { should be_directory }
end

describe command('kubebuilder') do
  its(:exit_status) { should eq 0 }
end
