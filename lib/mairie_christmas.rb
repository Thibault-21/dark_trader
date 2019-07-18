#Initialize everything we need 
require 'rubygems'
require 'nokogiri'   
require 'open-uri'

def get_townhall_email(townhall_urls)
=begin 
    je créé une array qui = ma variable ; j'utilise la fonction map pour faire une boucle afin de 
    pouvoir recollecter mes informations.
=end
    townhall_email = townhall_urls.map { |page| Nokogiri::HTML(open(page)).xpath('//tr//td[contains(text(),"@")]').text }
    
    townhall_name_raw = townhall_urls.map { |page| Nokogiri::HTML(open(page)).xpath('/html/body/div/main/section[1]/div/div/div/h1').text }
    
    townhall_name = townhall_name_raw.map { |town| town.capitalize.split.take(1).join}
    
    #on mixe les deux array 
    h = Hash[townhall_name.zip(townhall_email)]
    result = [h.each {|k,v| Hash[k => v] }]
    puts result.inspect
  end
  
  
  def get_townhall_urls
    page = Nokogiri::HTML(open("http://annuaire-des-mairies.com/val-d-oise.html"))
    towns_scrap = page.xpath('//tr//td//p//a[@class="lientxt"]/@href')
    towns = towns_scrap.map {|link|"http://annuaire-des-mairies.com #{link.text.to_s.delete_prefix(".")}" }
    return towns
  end
  
  get_townhall_email(get_townhall_urls)
   
 




