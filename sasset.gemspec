# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)
require 'version'

Gem::Specification.new do |s|
  s.name        = 'sasset'
  s.version     = Sasset::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['Alexander Kern']
  s.email       = ['alex@kernul.com']
  s.homepage    = 'http://github.com/CapnKernul/sasset'
  s.summary     = %q{Asset hosts with SASS/SCSS}
  s.description = %q{Allows multiple asset hosts to be used with SASS/SCSS}
  
  s.rubyforge_project = 'sasset'
  
  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ['lib']
  
  s.add_dependency 'sass'
end