require 'open-uri'
require 'pry'
# require "Nokogiri"


class Scraper

  def self.scrape_index_page(index_url)
    index_url= Nokogiri::HTML(open("./fixtures/student-site/index.html"))
    index_url.css(".student-card").map do |profile|
      {name: profile.css("h4.student-name").text,
        location: profile.css("p.student-location").text,
        profile_url: profile.css("a")[0]["href"]
      }
    end
  end

  def self.scrape_profile_page(profile_url)
    new_hash = []
    student_profile= Nokogiri::HTML
  end

end
