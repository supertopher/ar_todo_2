require 'rake'
require 'rspec/core/rake_task'
<<<<<<< HEAD
require_relative './config/application'
=======
require_relative 'db/config'
require_relative "/app/lib/todo_populator"
>>>>>>> 4b6859dac98b005d945658f533c11cb2ffad5c20


desc "create the database"
task "db:create" do
  touch DB_PATH
end

desc "drop the database"
task "db:drop" do
  puts "Deleting #{DB_PATH}..."
  rm_f DB_PATH
end

desc "migrate the database (options: VERSION=x, VERBOSE=false, SCOPE=blog)."
task "db:migrate" do
  ActiveRecord::Migrator.migrations_paths << File.dirname(__FILE__) + 'db/migrate'
  ActiveRecord::Migration.verbose = ENV["VERBOSE"] ? ENV["VERBOSE"] == "true" : true
  ActiveRecord::Migrator.migrate(ActiveRecord::Migrator.migrations_paths, ENV["VERSION"] ? ENV["VERSION"].to_i : nil) do |migration|
    ENV["SCOPE"].blank? || (ENV["SCOPE"] == migration.scope)
  end
end

desc "populate the test database with sample data"
task "db:seed" do
  require APP_ROOT.join('db', 'seeds.rb')
end

desc 'Retrieves the current schema version number'
task "db:version" do
  puts "Current version: #{ActiveRecord::Migrator.current_version}"
end

desc 'Start IRB with application environment loaded'
task "console" do
  exec "irb -r./config/application"
end

# desc 'Populate the database with tasks'
# task "db:populate_tasks" do
#   puts "link the task dude"
# end



desc "Run the specs"
RSpec::Core::RakeTask.new(:spec)

task :default  => :specs
