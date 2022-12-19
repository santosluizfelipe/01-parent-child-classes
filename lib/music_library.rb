class MusicLibrary
  def initialize
    @my_music = []
  end

  def add(track) 
    @my_music << track
  end

  def all
    @my_music
  end
  
  def search(keyword) # keyword is a string
    @my_music.select do |track|
      track.matches?(keyword)
    end
  end
end