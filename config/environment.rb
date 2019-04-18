SINATRA_ACTIVESUPPORT_WARNING=false
require 'paint'
require 'colorize'
require 'httparty'
require 'json'
require 'dragonfly'
require 'terminal-table'



require 'bundler'
Bundler.require

ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'db/development.db')
require_all 'lib'
require_all 'app'
