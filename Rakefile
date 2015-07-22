require "bundler/gem_tasks"
require "rspec/core/rake_task"

RSpec::Core::RakeTask.new(:spec)

task :default => :spec


$LOAD_PATH.unshift 'lib'
require 'feature/server/tasks'

desc "Push a new version to Gemcutter"
task :publish do
  require 'feature/server/version'

  sh "gem build feature-server.gemspec"
  sh "gem push feature-server-#{Feature::Server::Version}.gem"
  sh "git tag v#{Feature::Server::Version}"
  sh "git push origin v#{Feature::Server::Version}"
  sh "git push origin master"
  sh "git clean -fd"
end
