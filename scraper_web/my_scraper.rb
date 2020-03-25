require 'httparty'
require 'nokogiri'

class MyScraper
  attr_reader :parsing_page

  def initialize
    url = HTTParty.get('http://quotes.toscrape.com/')
    @parsing_page = Nokogiri::HTML(url)
  end

  def famous_quotes
    quote_list = parsing_page.css('div.quote')
  end

  def my_quote
    quote = famous_quotes.css('span.text').children.map(&:text).compact
  end

  def my_author
    author = famous_quotes.css('span').css('small.author').children.map(&:text).compact
  end

  def my_tags
    anchor_tags = famous_quotes.css('div.tags').css('a.tag').children.map(&:text).compact
  end

  the_scraper = MyScraper.new
  quotes = the_scraper.my_quote
  authors = the_scraper.my_author
  tags = the_scraper.my_tags

  (0...quotes.size).each do |i|
    puts "-------Quote: #{i + 1}---------"
    puts "\n"
    puts "QUOTE: #{quotes[i]}"
    puts ''
    puts "AUTHOR: #{authors[i]}"
    puts ''
    puts "TAGS: #{tags[i]}"
    puts "\n"
  end
end
