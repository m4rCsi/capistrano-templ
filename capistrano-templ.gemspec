lib = File.expand_path('../lib',__FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'capistrano/templ/version'


Gem::Specification.new do |s|
  s.name        = 'capistrano-templ'
  s.version     = Capistrano::Templ::VERSION
  s.summary     = "Capistrano template plugin"
  s.description = "Capistrano template plugin"
  s.authors     = ["Marc Siegenthaler"]
	s.email       = 'shin@marcsi.ch'
	s.files       = `git ls-files`.split($/)
	s.test_files    = s.files.grep(%r{^(test|spec|features)/})
	s.require_paths = ["lib"]
  s.homepage    =
		'https://github.com/m4rCsi/capistrano-templ'
  s.license       = 'MIT'

	s.required_ruby_version = '>= 1.9.3'                                                                                                                                                          
	s.add_dependency 'capistrano', 	'~> 3.4'
end
