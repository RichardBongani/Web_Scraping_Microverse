require_relative 'scraper_vars.rb'
require 'csv'

class MyCsvFile < ScraperVars
  def csv_file
    CSV.foreach('my_quotes.csv', 'r') do |csv|
      puts csv.inspect
    end
  end
end
