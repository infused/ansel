# encoding: ascii-8bit

$LOAD_PATH.unshift(File.dirname(__FILE__) + '/../lib/')
require 'rubygems'
require 'rspec'
require 'ansel'

RSpec.configure do |config|
  config.warnings = true
  config.order = :random
end
