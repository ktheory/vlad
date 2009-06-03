require 'vlad'

namespace :vlad do
  desc 'Restart Passenger'
  remote_task :start_app, :roles => :app do
    run "touch #{current_path}/tmp/restart.txt"
  end
end
