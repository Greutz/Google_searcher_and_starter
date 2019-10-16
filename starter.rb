require 'pry'

def check_if_user_gave_input
  return true if ARGV.empty? || ARGV.index(/\s/)
end

def abort_message
  abort('Input dir path and name, whitouth spaces') if check_if_user_gave_input == true
end

def folder_name_and_path
  ARGV
end

def create_folder
  split = folder_name_and_path.join('/')
  Dir.mkdir(split)
  split2 = split.split('/')
  split3 = split2[1..-2].join('/')
  split3
end

def create_gemfile
  working_dir = folder_name_and_path.join('/')
  Dir.chdir(working_dir) do
    file = File.open('Gemfile', 'w')
    file.puts("source 'https://rubygems.org'")
    file.puts("ruby '2.5.1'")
    file.puts("gem 'rspec'")
    file.puts("gem 'pry'")
    file.puts("gem 'rubocop', '~> 0.57.2'")
    file.close
  end
end

def create_evrything_else
  working_dir = folder_name_and_path.join('/')
  Dir.chdir(working_dir) do
    app = File.open('app.rb', 'w')
    app.puts("require 'bundler'")
    app.puts('Bundler.require')
    app.puts
    app.puts("$:.unshift File.expand_path('./../lib', __FILE__)")
    app.puts("require ''")
    app.close
    gitignore = File.open('.gitignore', 'w')
    File.open('.env', 'w')
    gitignore.puts('.env')
    gitignore.puts('test.rb')
    File.open('Readme.MD', 'w')
    puts 'Preparing files'
  end
end

def system_shit
  working_dir = folder_name_and_path.join('/')
  Dir.chdir(working_dir) do
    system('mkdir lib')
    system('git init')
    system('bundle install')
    system('rspec --init')
  end
  Dir.chdir(working_dir + '/lib') do
    system('mkdir app')
    system('mkdir views')
    File.open('test.rb', 'w')
  end
  Dir.chdir(working_dir + '/lib/views') do
    File.open('done.rb', 'w')
    File.open('index.rb', 'w')
  end
end

def perform
  check_if_user_gave_input
  abort_message
  folder_name_and_path
  create_folder
  create_gemfile
  create_evrything_else
  system_shit
  puts
  sleep(1)
  split = folder_name_and_path.join('/')
  split2 = split.split('/')
  split3 = split2[1..-2].join('/')
  puts "Created #{split2[-1]} folder, in #{split3} have a nice day"
  sleep(1)
  puts
  puts 'Created Gemfile with ruby 2.5.1 and rspec, pry and rubocop gems'
  puts
  sleep(1)
  puts "HEAVEN OR HELL ? LET'S ROCK"
end
perform
