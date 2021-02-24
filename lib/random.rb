# rubocop: disable Style/GuardClause
require 'httparty'
require 'nokogiri'

class NewRandom
  def urls
    url = 'https://www.reddit.com/r/quotes/.rss'
    page = HTTParty.get(url, {
                          headers: { 'User-Agent' => 'HTTParty' }
                        })
    Nokogiri::XML(page.body)
  end

  def quotes
    xml_content = urls.to_s.split('<entry>')
    array = []
    xml_content.each do |x|
      if !x.include?('author')
        next
      else
        entry = x.to_s.split('>')
        entry.each do |y|
          next unless y.include?('title')

          filter = y.delete('</')
          filter = filter.gsub('title', '')
          array.push(filter)
        end
      end
    end
    array
  end
end

# rubocop: enable Style/GuardClause
