# require 'nokogiri'
# require 'open-uri'

#    page = Nokogiri::HTML(open('https://www.https://coinmarketcap.com/all/views/all/'))
----------------------------------------------
require 'nokogiri'
require 'open-uri'

page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))

def scraping(page)
 # Scraping des symboles de cryptos
 currencies_scrap = page.xpath('//td[contains(concat(" ",normalize-space(@class)," "), " col-symbol ")]')
 currencies = currencies_scrap.map { |currency| currency.text.strip } #strip sert à regrouper lorsqu'il y a des caractères vides
 # Scraping des valeurs de cryptos
 values_scrap = page.xpath('//a[contains(concat(" ",normalize-space(@class)," "), " price ")]')
 values = values_scrap.map { |value| value.text.delete("$").to_f } # retirer le symbole $ text.delete; pour le convertir, on utilise le float pour avoir un nombre numérique, décimal.
 # Regroupement des deux arrays en un hash
 h = Hash[currencies.zip(values)]
 # Segmentation du hash en plusieurs hashes au sein d'un array
 result = [h.each {|k,v| Hash[k => v] }]

 puts result.inspect
end

scraping(page)

-------------

#    crypto_currencies = Array.new #tout le tableau des cryptos
# # crypto_currencies //*[@id="currencies"]
#     currencies = page.xpath('//tbody/a')

#     # code xpath du nom bitcoin 
#    crypto_names = Array.new
#    crypto_names //*[@id="th-name"]

#    #nom du fournisseur (BTC)
#    crypto-names = Array.new
#    crypto_names //*[@id="th-totalsupply"]
   
#     # code xpath du prix du bitcoin 
#    crypto_cours = Array.new 
#    crypto_cours //*[@id="th-price"]

=begin
   page = Nokogiri::HTML(open('https://www.https://coinmarketcap.com/all/views/all/'))
   all_emails_links = page.xpath('//a')
   puts el.text

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
=end