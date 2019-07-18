require 'rubygems'
require 'nokogiri'
require 'open-uri'
#example 
# page = Nokogiri::HTML(open('http://en.wikipedia.org/wiki/HTML'))
# page.css('div#content div#bodyContent table.infobox tr th').each do |el|
#    puts el.text
#cas concret 
   page = Nokogiri::HTML(open('https://www.thehackingproject.org/dashboard/courses/1/weeks/2/days/4?locale=fr'))
   all_emails_links = page.xpath('//a')
   puts el.text

   //*[@id="wikiArticle"]/div/a[1] 
end
# begin
#     # Any exceptions in here... 
#     1/0
#   rescue ZeroDivisionError => e
#     puts "Exception Class: #{ e.class.name }"
#     puts "Exception Message: #{ e.message }"
#     puts "Exception Backtrace: #{ e.backtrace }"
#   end
a = [
  { "BTC" => 5245.12 },
  { "ETH" => 217.34 }, 
  etc
]