# encoding: ascii-8bit

lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)
require 'ansel/version'

Gem::Specification.new do |s|
  s.name = 'ansel'
  s.version = ANSEL::VERSION
  s.authors = ["Keith Morrison"]
  s.email = 'keithm@infused.org'
  s.homepage = 'http://github.com/infused/ansel'
  s.summary = 'Convert ANSEL encoded text to UTF-8'
  s.description = 'Convert ANSEL encoded text to UTF-8'

  s.rdoc_options = ['--charset=UTF-8']
  s.extra_rdoc_files = ['README.md', 'CHANGELOG.md', 'LICENSE']
  s.files = Dir['[A-Z]*', '{lib,test}/**/*', 'ansel.gemspec']
  s.test_files = Dir.glob('test/**/*_test.rb')
  s.require_paths = ['lib']

  s.required_rubygems_version = '>= 1.3.0'
end
