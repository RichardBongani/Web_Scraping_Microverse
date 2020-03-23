require "httparty"
require "nokogiri"

class Web_Scraper
  attr_reader :parsing_page  
  
  def initialize
    url = HTTParty.get("https://www.biznizdirectory.co.za/")
    @parsing_page ||= Nokogiri::HTML(url) 
  end

end
