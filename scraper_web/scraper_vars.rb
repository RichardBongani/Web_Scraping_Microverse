require_relative 'scraper.rb'

class ScraperVars < MyScraper
  def storage_scraper
    list_quotes = []
    content = parsing_url.css('.col-md-8')
    content.css('div.quote').each do |i|
      quote = i.css('span.text').inner_text
      author = i.css('small.author').inner_text
      tags = i.css('a.tag').first.inner_text
      list_quotes << quote
      list_quotes << author
      list_quotes << tags
    end
  end
end
