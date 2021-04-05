require 'nokogiri'
require 'open-uri'

class Scraper < ActiveRecord::Base
    
    validates :url, url: true

    before_save :scrape

    def scrape
        response = nil
        open(self.url) do |http|
            response = http.read
        end
        self.source_code = Nokogiri::HTML::DocumentFragment.parse(response.inspect)
    end
    
    
    def tags
        html_tags = HtmlTag.all
        tags = {}
        source_code = self.source_code
        html_tags.each do |html_tag|
            tag_name = html_tag.tag_name
            count =  source_code.gsub(tag_name).count
            (tags[tag_name] = count ) if count > 0 # if count checks if count has value
        end
        tags
     end

end