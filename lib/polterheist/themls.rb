module Polterheist
  class TheMLS
    include Capybara::DSL

    Capybara.app_host = "http://www.themls.com"

    def locate_property(address)
      visit('/m/')
      input_box = find(".SearchContainer > input[rel='searchField']")
      input_box.set address
      # fill_in "txtSearchBox", :with => address
      binding.pry
      #all(:xpath, "//li[@class='g']/h3/a").each { |a| puts a[:href] }

    end
  end
end
