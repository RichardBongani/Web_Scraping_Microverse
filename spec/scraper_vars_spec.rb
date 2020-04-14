require_relative '../bin/scraper_vars.rb'
require 'rspec-html-matchers'

describe 'ScraperVars' do
  include RSpecHtmlMatchers
  it 'should return the html tag' do
    expect('<div class="quote" itemscope itemtype="http://schema.org/CreativeWork>').to have_tag('div.quote')
  end

  it 'should return the html tag' do
    expect('<span class="text" itemprop="text">').to have_tag('span.text')
  end

  it 'should return the html tag' do
    expect('<div class="tags">').to have_tag('div.tags')
  end
end
