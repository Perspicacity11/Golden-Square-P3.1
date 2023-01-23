# File: lib/music_library.rb

class MusicLibrary
  def initialize
    @library = []
  end

  def add(track)
    @library << track
  end

  def all
    @library
  end
  
  def search(keyword)
    search = []
    @library.each do |x|
      if x.matches?(keyword)
        search << x
      end
    end
    return search
  end
end # Returns nothing
