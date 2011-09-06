# -*- ruby -*-

require 'rubygems'
desc "quick little hack to see what the state of the nation looks like"
task :debug do
  $: << 'lib'
  require 'vlad'
  Vlad.load :config => "lib/vlad/subversion.rb"
  set :repository, "repository path"
  set :deploy_to,  "deploy path"
  set :domain,     "server domain"

  Rake::Task['vlad:debug'].invoke
end

# vim: syntax=ruby
