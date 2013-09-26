require "polterheist/version"

require 'capybara/poltergeist'
require 'pry'
require 'launchy'
require 'fileutils'

Capybara.javascript_driver = :poltergeist
Capybara.register_driver :poltergeist do |app|
  Capybara::Poltergeist::Driver.new(app, {
    inspector:true,
    phantomjs_logger: Tempfile.new('quiet_phantomjs'),
    js_errors:false
  })
end
Capybara.current_driver = :poltergeist

module Polterheist
end

require 'polterheist/themls'
