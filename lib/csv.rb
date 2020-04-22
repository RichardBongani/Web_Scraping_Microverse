require_relative 'scraper_vars.rb'
require_relative 'scraper.rb'
require 'csv'

class MyCsvFile < MyScraper
  def csv_file
    CSV.foreach('my_quotes.csv') do |csv|
      puts csv.inspect
    end
  end
end
