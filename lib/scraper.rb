require 'open-uri'
require 'pry'

class Scraper

  def self.scrape_index_page(index_url)
    index_url= Nokogiri::HTML(open("./fixtures/student-site/index.html"))
    index_url.css(".student-card").map do |profile|
      {name: profile.css("h4.student-name").text,
        location: profile.css("p.student-locattion").text,
        
      }
  end

  def self.scrape_profile_page(profile_url)

  end

end
