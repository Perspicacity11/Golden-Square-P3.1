require 'track'

RSpec.describe Track do
  it 'matches either title or artist' do 
    first = Track.new('bye bye baby', 'bay city rollers')
    expect(first.matches?('bay')).to eq true
  end
  it 'matches either title or artist' do 
    first = Track.new('bye bye baby', 'bay city rollers')
    expect(first.matches?('ba')).to eq true
  end
  
end