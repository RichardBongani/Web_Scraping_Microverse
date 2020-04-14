require_relative 'scraper_vars.rb'
require 'csv'

class MyCsvFile < ScraperVars
  def csv_file
    CSV.foreach('my_quotes.csv', 'r') do |csv| # reads the csv file aswell, this one is for the files that are bigger so we can read it one at a time
      puts csv.inspect
    end
  end
end
