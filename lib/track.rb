class Track
  def initialize(title, artist)
    @title = title
    @artist = artist
  end

  def matches?(keyword) # keyword is a string
    true if keyword.include?(@title) || keyword.include?(@artist)
  end
end