require 'httparty'
require 'nokogiri'
url = 'https://www.reddit.com/r/quotes/.rss'
page = HTTParty.get(url, {
    headers: { 'User-Agent' => 'HTTParty'}
})
parse_page = Nokogiri::XML(page.body)
xml_content = parse_page.to_s.split('<entry>')
array = Array.new
for x in xml_content
    if not x.include?('author')
        next
    else
        entry = x.to_s.split('>')
        for y in entry
            if y.include?('title')
                filter = y.delete('</')
                filter = filter.gsub('title','')
                array.push(filter)
            end
        end
    end
end
puts array.sample