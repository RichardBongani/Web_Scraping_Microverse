require 'nokogiri'
require 'rest-client'

class MyScraper
  attr_reader :parsing_url
  def initialize
    url = RestClient.get('http://quotes.toscrape.com/')
    @parsing_url = Nokogiri::HTML(url) # This gem grabs the html data  from the url  and stores that data in an array then prints it out the selected data I want
  end
end
