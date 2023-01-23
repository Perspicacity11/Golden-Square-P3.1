require 'track'
require 'music_library'

RSpec.describe 'integration test' do 
  it 'prints library' do
    first = Track.new('asdf','asdfdsf')
    second = Track.new('ghaskdf','uycsdds')
    library = MusicLibrary.new
    library.add(first)
    library.add(second)
    expect(library.all).to eq [first, second]
  end
  it 'searches the library for songs containing the string searched' do 
    first = Track.new('asdf','asdfdsf')
    second = Track.new('ghaskdf','uycsdds')
    library = MusicLibrary.new
    library.add(first)
    library.add(second)
    expect(library.search('asdf')).to eq [first]
  end
  it 'searches the library for songs containing the string searched' do 
    first = Track.new('asdf','asdfdsf')
    second = Track.new('ghaskdf','uycsdds')
    library = MusicLibrary.new
    library.add(first)
    library.add(second)
    expect(library.search('df')).to eq [first, second]
  end
end