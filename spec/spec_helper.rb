# encoding: ascii-8bit

require 'codeclimate-test-reporter'
CodeClimate::TestReporter.start

$:.unshift(File.dirname(__FILE__) + '/../lib/')
require 'rubygems'
require 'rspec'
require 'ansel'

RSpec.configure do |config|

end
