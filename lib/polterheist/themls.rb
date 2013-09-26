module Polterheist
  class TheMLS
    include Capybara::DSL

    Capybara.app_host = "http://www.themls.com"

    def locate_property(address)
      visit('/m/')
      input_box = find(".SearchContainer > input[rel='searchField']")
      input_box.set address
      click_on "Search"
      print "Waiting 5 seconds for slow client javascript stuff to happen."
      5.times {sleep 1 ; print "."} 
      if page.has_css?(".mainImage")
        puts "Found a house at #{address}"
      elsif page.has_text? "No Homes Found"
        puts "Did not find any houses at #{address}"
      else
        puts "No idea. Did I not wait long enough?"
      end
      page.body
    end
  end
end
