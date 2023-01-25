require 'nokogiri'
require 'open-uri'
require 'capybara'
require 'webdrivers'

class Spider 

  def get_link(page)
    return page.css("a").map{ |link| link['href'] }
  end

  def generate_page
    return Nokogiri::HTML(URI.open("http://passingprogram.tistory.com/"))
  end
  
end