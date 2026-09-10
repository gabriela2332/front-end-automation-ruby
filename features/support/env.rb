# encoding: utf-8

require 'capybara/cucumber'
require 'selenium-webdriver'
require 'rspec'
require 'rspec/expectations'
require 'site_prism'
include RSpec::Matchers

require_relative 'page.initialize'

World(Page)

Environment = ENV['URL'] || 'https://linkedin.com/login'

ENV['CUCUMBER_OUTPUT_ENCODING'] = 'UTF-8' if RUBY_PLATFORM =~ /mswin|mingw|cygwin/
Encoding.default_external = Encoding::UTF_8
Encoding.default_internal = Encoding::UTF_8

Capybara.configure do |config|
  config.app_host = Environment
  config.default_driver = :selenium_chrome
  config.default_max_wait_time = 5
end