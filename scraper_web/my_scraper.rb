require 'httparty'
require 'nokogiri'

class MyScraper
  attr_reader :parsing_page, :quotes
  quotation = []
  def initialize
    url = HTTParty.get('http://quotes.toscrape.com/')
    @parsing_page = Nokogiri::HTML(url)
  end

  def famous_quotes
    parsing_page.css('div.quote')
  end

  def my_quote
    famous_quotes.css('span.text').children.map(&:text).compact
  end

  def my_author
    famous_quotes.css('span').css('small.author').children.map(&:text).compact
  end

  def my_tags
    famous_quotes.css('div.tags').css('a.tag').children.map(&:text).compact
  end
end
