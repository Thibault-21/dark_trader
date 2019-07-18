#Initialize everything we need 
require 'rubygems'
require 'nokogiri'   
require 'open-uri'
PAGE_URL = "http://annuaire-des-mairies.com/"
page = Nokogiri::HTML(open(PAGE_URL)) 


val_oise_emails = Array.new
val_oise_ville = Array.new 


def town_hall(page) 

    page.xpath('//a[contains(@href, "mailto")]')).each do |elem|
        val_oise_emails << elem.text
    end

    page.xpath('//a[contains(@class, "lientxt")]').each do |elem|
        val_oise_ville << elem.text 
    end
    
    