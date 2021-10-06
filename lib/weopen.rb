require_relative "weopen/version"
require_relative "weopen/app"

puts (Weopen::App.new).open_closed
