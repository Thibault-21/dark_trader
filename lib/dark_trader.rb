require 'rubygems'
require 'nokogiri'
require 'open-uri'

   page = Nokogiri::HTML(open('https://www.https://coinmarketcap.com/all/views/all/'))
   crypto_names = Array.new
   
   a = [
        { }
     ]




=begin
   page = Nokogiri::HTML(open('https://www.https://coinmarketcap.com/all/views/all/'))
   all_emails_links = page.xpath('//a')
   puts el.text
=end
#    //*[@id="wikiArticle"]/div/a[1] 
# end
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