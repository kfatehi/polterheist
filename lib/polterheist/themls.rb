module Polterheist
  class TheMLS
    include Capybara::DSL

    Capybara.app_host = "http://www.themls.com"

    def locate_property(address)
      visit('/m/')
      input_box = find(".SearchContainer > input[rel='searchField']")
      input_box.set address
      click_on "Search"
      loop do
        if page.has_css?(".mainImage")
          return page.body
        elsif page.has_text? "No Homes Found"
          return false
        else
          sleep 1
        end
      end
    end
  end
end
