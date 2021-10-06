require_relative "weopen/version"
require_relative "weopen/app"

@weopen = (Weopen::App.new).open_closed
