require 'nokogiri'
require 'rest-client'

class MyScraper
  attr_reader :parsing_url
  def initialize
    url = RestClient.get('http://quotes.toscrape.com/')
    @parsing_url = Nokogiri::HTML(url)
  end
end
