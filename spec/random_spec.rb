require_relative '../lib/random'

RSpec.describe NewRandom do
  new_link = NewRandom.new
  describe '#urls' do
    it 'gives back the content of the web page' do
      expect(new_link.urls).to be_an_instance_of(Nokogiri::XML::Document)
    end
  end

  describe '#quotes' do
    it 'gives back and array of quotes' do
      expect(new_link.quotes).to be_an_instance_of(Array)
    end
    it 'gives back a random quote' do
      expect(new_link.quotes.sample).to be_an_instance_of(String)
    end
    it 'check if the string has content' do
      content = new_link.quotes.sample.empty?
      expect(content).to eql(false)
    end
    it 'check if the string has content' do
      content = new_link.quotes.sample.empty?
      expect(content).not_to eql(true)
    end
  end
end
