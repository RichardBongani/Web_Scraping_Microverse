require_relative "my_scraper" 
  
  def scrape 
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
  scrape