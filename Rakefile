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