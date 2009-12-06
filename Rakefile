# -*- ruby -*-

require 'rubygems'
require 'rake/testtask'
Rake::TestTask.new do |t|
  t.libs << "test"
  t.test_files = FileList['test/test*.rb']
  t.verbose = true
end
task :default => :test

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gemspec|
    gemspec.name = "ktheory-vlad"
    gemspec.summary = "Vlad the Deployer is pragmatic application deployment automation, without mercy [ktheory's fork]"
    gemspec.description = %Q{
Vlad the Deployer is pragmatic application deployment automation,
without mercy. Much like Capistrano, but with 1/10th the
complexity. Vlad integrates seamlessly with Rake, and uses familiar
and standard tools like ssh and rsync. This is a fork of vlad maintained by
Aaron Suggs. See PATCHES.txt for more info""
}
    gemspec.homepage = "http://github.com/ktheory/vlad"
    gemspec.authors = ['Ryan Davis','Eric Hodel', 'Wilson Bilkovich', 'Aaron Suggs']
    gemspec.email = ['ryand-ruby@zenspider.com', 'drbrain@segment7.net', 'wilson@supremetyrant.com', 'aaron@ktheory.com']
    gemspec.add_dependency 'rake',  '~> 0.8.0'
    gemspec.add_dependency 'open4', '~> 0.9.0'
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler not available. Install it with: sudo gem install jeweler"
end

desc "quick little hack to see what the state of the nation looks like"
task :debug do
  Vlad.load :config => "lib/vlad/subversion.rb"
  set :repository, "repository path"
  set :deploy_to,  "deploy path"
  set :domain,     "server domain"

  Rake::Task['vlad:debug'].invoke
end

task :mana_from_heaven do
  # vlad = vlad + rake + open4
  # rake sans-contrib = 2035.98356718206
  vlad  = `flog -s lib`.to_f + 2350.30744806517 + 502.363818023761
  cap   = 11480.3919695285
  ratio = cap / vlad
  target = cap / Math::PI

  puts "%14.8f = %s" % [vlad, "vlad"]
  puts "%14.8f = %s" % [ratio, "ratio"]
  puts "%14.8f = %s" % [target - vlad, "needed delta"]
end

# vim: syntax=ruby
