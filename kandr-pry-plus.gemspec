# encoding: utf-8

require './lib/pry-plus'
require 'yaml'

Gem::Specification.new do |s|
  deps = YAML.load_file('in.yml').keys

  s.name          = 'kandr-pry-plus'
  s.version       = PryPlus::VERSION
  s.license       = 'CC0'
  s.summary       = 'Pry + Essential Plugins'
  s.description   = deps.join ' + '
  s.homepage      = 'https://github.com/K-and-R/pry-plus'
  s.email         = 'karl@kandrsoftware.com'
  s.authors       = ['☈king', 'karlwilbur']
  s.files         = Dir['lib/*']
  s.executables   = Dir['bin/*'].map { |e| e.sub 'bin/', '' }

  s.required_ruby_version = '>= 2.3.0'

  deps.each { |e| s.add_dependency e }

  s.add_development_dependency 'rake'
end
