require 'music_library'

RSpec.describe 'integration test' do 
  it 'prints library' do
    library = MusicLibrary.new
    first = FakeTrack.new('asdf','gasdg')
    second = FakeTrack.new('asdf','gasdg')
    library.add(first)
    library.add(second)
    expect(library.all).to eq [first, second]
  end

it "prints library with fake tracks" do
  library = MusicLibrary.new
  library.add(double(:fake_track1, initialize: 'trackname1'))
  library.add(double(:fake_track2, initialize: 'trackname2'))
  expect(library.all).to eq [double(:fake_track1, initialize: 'trackname1'), double(:fake_track2, initialize: 'trackname2')]
end
  # it 'searches the library for songs containing the string searched' do 
  #   first = Track.new('asdf','asdfdsf')
  #   second = Track.new('ghaskdf','uycsdds')
  #   library = MusicLibrary.new
  #   library.add(first)
  #   library.add(second)
  #   expect(library.search('asdf')).to eq [first]
  # end
  # it 'searches the library for songs containing the string searched' do 
  #   first = Track.new('asdf','asdfdsf')
  #   second = Track.new('ghaskdf','uycsdds')
  #   library = MusicLibrary.new
  #   library.add(first)
  #   library.add(second)
  #   expect(library.search('df')).to eq [first, second]
  # end
end

class FakeTrack
  def initialize(title, artist)
    @title = title
    @artist = artist
  end

  # def matches?(keyword)
  #   string = @title + @artist
  #   string.include?(keyword)
  # end
end