# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "vlad"
  s.version = "2.2.1"

  s.authors = [%q{Ryan Davis}, %q{Eric Hodel}, %q{Wilson Bilkovich}]
  s.date = "2011-09-04"
  s.description = %q{Vlad the Deployer is pragmatic application deployment automation,
without mercy. Much like Capistrano, but with 1/10th the
complexity. Vlad integrates seamlessly with Rake, and uses familiar
and standard tools like ssh and rsync.

Impale your application on the heartless spike of the Deployer.}
  s.email = [%q{ryand-ruby@zenspider.com}, %q{drbrain@segment7.net}, %q{wilson@supremetyrant.com}]
  s.extra_rdoc_files = [%q{History.txt}, %q{Manifest.txt}, %q{README.txt}, %q{considerations.txt}, %q{doco/deploying-merb-with-vlad.txt}, %q{doco/deploying-sinatra-with-vlad.txt}, %q{doco/faq.txt}, %q{doco/getting_started.txt}, %q{doco/migration.txt}, %q{doco/perforce.txt}, %q{doco/variables.txt}]
  s.files = [%q{.autotest}, %q{History.txt}, %q{Manifest.txt}, %q{README.txt}, %q{Rakefile}, %q{considerations.txt}, %q{doco/deploying-merb-with-vlad.txt}, %q{doco/deploying-sinatra-with-vlad.txt}, %q{doco/faq.txt}, %q{doco/getting_started.txt}, %q{doco/migration.txt}, %q{doco/perforce.txt}, %q{doco/variables.txt}, %q{lib/vlad.rb}, %q{lib/vlad/apache.rb}, %q{lib/vlad/core.rb}, %q{lib/vlad/maintenance.rb}, %q{lib/vlad/passenger.rb}, %q{lib/vlad/rails.rb}, %q{lib/vlad/subversion.rb}, %q{test/test_vlad.rb}, %q{test/test_vlad_subversion.rb}, %q{vladdemo.sh}]
  s.homepage = %q{http://rubyhitsquad.com/}
  s.rdoc_options = [%q{--main}, %q{README.txt}]
  s.require_paths = [%q{lib}]
  s.summary = %q{Vlad the Deployer is pragmatic application deployment automation, without mercy}
  s.test_files = [%q{test/test_vlad.rb}, %q{test/test_vlad_subversion.rb}]

  s.add_dependency "rake", "~> 0.8"
  s.add_dependency "rake-remote_task", "~> 2.0"
  s.add_dependency "open4", "~> 0.9.0"
end
