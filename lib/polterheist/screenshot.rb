module Polterheist
  module Screenshot
    def self.included(base)
      require 'launchy'
      require 'fileutils'
    end

    def ss
      path = '/tmp/screenshot.png'
      FileUtils.rm(path) if File.exists?(path)
      page.save_screenshot path
      Launchy.open path
    end
  end
end
