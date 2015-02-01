# encoding: ascii-8bit

begin
  require 'codeclimate-test-reporter'
  CodeClimate::TestReporter.start
rescue LoadError
end

$:.unshift(File.dirname(__FILE__) + '/../lib/')
require 'rubygems'
require 'rspec'
require 'ansel'

RSpec.configure do |config|

end
