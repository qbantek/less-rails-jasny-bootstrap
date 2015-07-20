require 'json'
require File.expand_path('../lib/less/rails/jasny/bootstrap/version', __FILE__)

desc 'Update assets'
task :update do
  if ARGV.count > 1
    checkout_branch = "tags/#{ARGV.last}"
    task ARGV.last.to_sym {}
  else
    checkout_branch = '`git describe --abbrev=0`'
  end

  if Dir.exist?('jasny-bootstrap-src')
    system("cd jasny-bootstrap-src && git checkout master && git pull && git checkout #{checkout_branch}")
  else
    system('git clone git://github.com/jasny/bootstrap.git jasny-bootstrap-src')
    system("cd jasny-bootstrap-src && git checkout #{checkout_branch}")
  end


  system('cp jasny-bootstrap-src/js/*.js         app/assets/javascripts/jasny-bootstrap/')
  system('cp jasny-bootstrap-src/less/*.less     app/assets/stylesheets/jasny-bootstrap/')
  system('git status')

  puts "\n"
  puts "jasny-bootstrap version:            #{JSON.parse(File.read('./jasny-bootstrap-src/bower.json'))['version']}"
  puts "less-rails-jasny-bootstrap version: #{Less::Rails::Jasny::Bootstrap::VERSION}"
end


desc 'Build'
task 'build' do
  system('gem build less-rails-jasny-bootstrap.gemspec')
end

desc 'Build and publish the gem'
task :publish => :build do
  tags = `git tag`.split
  current_version = Less::Rails::Jasny::Bootstrap::VERSION
  system("git tag -a #{current_version} -m 'Release #{current_version}'") unless tags.include?(current_version)
  system("gem push less-rails-jasny-bootstrap-#{current_version}.gem")
  system('git push --follow-tags')
end

task :release => :publish do
end