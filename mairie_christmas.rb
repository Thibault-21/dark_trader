#Initialize everything we need 
require 'rubygems'
require 'nokogiri'   
require 'open-uri'
PAGE_URL = "http://annuaire-des-mairies.com/"
page = Nokogiri::HTML(open(PAGE_URL)) 

all_emails_links = page.xpath('/mettre_ici_le_XPath')

def scrapping(page)
     