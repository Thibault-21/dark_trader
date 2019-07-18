#Initialize everything we need 
require 'rubygems'
require 'nokogiri'   
require 'open-uri'
PAGE_URL = "http://annuaire-des-mairies.com/"
page = Nokogiri::HTML(open(PAGE_URL)) 

def get_townhall_email(townhall_urls)
    townhall_email = townhall_urls.map { |page| Nokogiri::HTML(open(page)).xpath('//tr//td[contains(text(),"@")]').text }
    townhall_name_raw = townhall_urls.map { |page| Nokogiri::HTML(open(page)).xpath('/html/body/div/main/section[1]/div/div/div/h1').text }
    townhall_name = townhall_name_raw.map { |town| town.capitalize.split.take(1).join}
    h = Hash[townhall_name.zip(townhall_email)]
    result = [h.each {|k,v| Hash[k => v] }]
    puts result.inspect
  end
  
  
  def get_townhall_urls
    page = Nokogiri::HTML(open("http://annuaire-des-mairies.com/val-d-oise.html"))
    towns_scrap = page.xpath('//tr//td//p//a[@class="lientxt"]/@href')
    towns = towns_scrap.map {|link| "http://annuaire-des-mairies.com#{link.text.to_s.delete_prefix(".")}" }
    return towns
  end
  
  get_townhall_email(get_townhall_urls)
   
  # Différents XPath d'emails
  # email_scrap = page.xpath('/html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]')
  # email_scrap_other = page.xpath('//tr//td[contains(text(),"@")]')
  
  # Restructuration des noms de villes 
  # a = ["ABLEIGES - 95450", "ROUBAIX - 150000"]
  # a.map {|commune| puts commune.capitalize.split.take(1).join.inspect }

  - ------------------------------------- - 
  
def get_town_hall_mail(town_hall_urls)
    val_oise_emails = town_hall_url.map {|page|.xpath('//tr//td[contains(text(),"@")]').text }
    
    end
    val_oise_ville
    page.xpath('//a[contains(@class, "lientxt")]').each do |elem|
        val_oise_ville << elem.text 
    end
    
def get_townhall_urls

