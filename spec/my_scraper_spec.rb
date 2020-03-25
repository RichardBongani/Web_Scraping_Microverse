require_relative '../scraper_web/my_scraper.rb'

describe MyScraper do
  let(:scrape) { My_scraper.new }

  it 'returns quotes from the website' do
    expect(scrape.my_quote) == 'QUOTE: a day without sunshine is like, you know, night.'
  end

  it 'returns the author who wrote the quote' do
    expect(scrape.my_author) == 'AUTHOR: Albert Einstein'
  end

  it 'returns the suggested tag for the quote' do
    expect(scrape.my_tags) == 'Tags: Miracle'
  end
end
