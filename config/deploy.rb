set :application, "htmlsandbox"
set :repository,  "git@github.com:teejayvanslyke/htmlsandbox.git"
set :deploy_to, "/var/www/#{application}"

set :scm, :git
default_run_options[:pty] = true
ssh_options[:forward_agent] = true
set :use_sudo, true
set :scm_verbose, true
set :rails_env, "production" 
set :user, "deploy"

role :web, "pdxart440.info"
role :app, "pdxart440.info"
role :db,  "pdxart440.info"
server 'pdxart440.info', :app, :web

namespace :deploy do
  desc "Create the database yaml file"
  task :after_update_code do
    db_config = <<-EOF
    production:    
      adapter: mysql
      encoding: utf8
      username: root
      password: 
      database: htmlsandbox
      host: localhost
      port: 3306
    EOF
    
    put db_config, "#{release_path}/config/database.yml"
  
  end

  task :start do
  end
  task :stop do
  end
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
  end
end
