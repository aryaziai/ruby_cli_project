require_relative 'config/environment'
require 'sinatra/activerecord/rake'

# The seeds file is a quick way to populate the database

desc 'starts a console'
task :console do
  ActiveRecord::Base.logger = Logger.new(STDOUT)
  Pry.start
end


# dont touch this
 