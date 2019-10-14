require 'pry'
require 'rspec'
require 'rubocop'
require 'launchy'

def check_user_input
  return true if ARGV.empty?
end

def abort_message(*)
  mess = "After typing script name, input what you'd like to search on google"
  abort mess.to_s if check_user_input == true
end

def launching
  input = ARGV
  input = input.join('+')
  Launchy.open("http://www.google.com/search?q=#{input}")
end

def perform
  abort_message(check_user_input)
  puts "C'est parti pour une recherche intense !"
  sleep(0.5)
  launching
end

perform
