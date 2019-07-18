#Initialize everything we need 
require 'rubygems'
require 'nokogiri'   
require 'open-uri'
PAGE_URL = "http://annuaire-des-mairies.com/"
page = Nokogiri::HTML(open(PAGE_URL)) 


val_oise_emails = Array.new
val_oise_ville = Array.new 

page.xpath('//a[contains(@href, "mailto")]')).each do |elem|

/html/body/div[1]/main/section[2]/div/table/tbody/tr[21]/td[4]/a #copy path du Val d'Oise 

/html/body/div[1]/main/section[2]/div/table/tbody/tr[1]/td[1]/a 

def scrapping(page) 

    all_emails_links = page.xpath('/mettre_ici_le_XPath')