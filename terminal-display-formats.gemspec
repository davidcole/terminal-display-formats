$:.unshift File.expand_path('../lib', __FILE__)
require 'terminal-display-formats'

Gem::Specification.new do |s|
  s.name        = 'terminal-display-formats'
  s.version     = TerminalDispayFormats::VERSION
  s.authors     = [ 'David Cole' ]
  s.description = 'The terminal-display-formats gem adds formatting methods to String for easily adding formatting to terminal output.'
  s.email       = [ 'davidcole@davidcole.net' ]
  s.files       = [ 'demo.rb', 'README.rdoc', 'Rakefile', 'lib/terminal-display-formats.rb' ]
  s.homepage    = 'http://github.com/davidcole/terminal-display-formats'
  s.summary     = 'Adds formatting methods to String for easily adding formatting to terminal output.'
  s.test_files  = [ 'test/test_formats.rb' ]
  s.license     = 'MIT'
end