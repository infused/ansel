# encoding: ascii-8bit

begin
  require 'simplecov'
  SimpleCov.start
rescue LoadError
end

$:.unshift(File.dirname(__FILE__) + '/../lib/')
require 'rubygems'
require 'rspec'
require 'ansel'

RSpec.configure do |config|

end
