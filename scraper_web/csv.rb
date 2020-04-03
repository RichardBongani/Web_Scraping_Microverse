require_relative 'scraper_vars.rb'
require 'csv'

class MyCsvFile < ScraperVars
  attr_reader :quotes_li
  def initialize
    @quotes_li = CSV.read('my_quotes.csv')
  end

  def csv_output
    CSV.foreach('my_quotes.csv') do |csv_list|
      puts csv_list.inspect
    end
  end
end
