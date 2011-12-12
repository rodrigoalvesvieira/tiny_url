#require "bundler/gem_tasks"

require 'rake'
require 'rdoc/task'
require 'fileutils'

task :test => :spec

task :default => :spec

require "rspec/core/rake_task"
RSpec::Core::RakeTask.new(:spec) do |t|
  t.rspec_opts = '--backtrace --color'
end

