## 1.  describe the problem
  add tracks to my music library 

## 2. design the methods

```ruby 
class MusicLibrary
  def initialize
    # ...
  end

  def add(track) # track is an instance of Track
    # Track gets added to the library
    # Returns nothing
  end

  def all
    # Returns a list of track objects
  end
  
  def search(keyword) # keyword is a string
    # Returns a list of tracks that match the keyword
  end
end

class Track
  def initialize(title, artist) # title and artist are both strings
  end

  def matches?(keyword) # keyword is a string
    # Returns true if the keyword matches either the title or artist
  end
end

```

## 3. test examples

```ruby
  # MusicLibrary class tests:
  #test1
  my_music = MusicLibrary.new
  my_music.add(fake_data) # => [fake_data]

  #test2
  my_music = MusicLibrary.new
  my_music.add(fake_data1)
  my_music.add(fake_data2)
  my_music.all # => [fake_data1, fake_data2]

  #rest3
  my_music = MusicLibrary.new
  fake_data1 = FakeInstance("artist1", "hello world")
  fake_data2 = FakeInstance("artist2", "this is the track name")
  my_music.add(fake_data1)
  my_music.add(fake_data2)
  my_music.search("world") # => [fake_data1]

  #Track class tests
  #test1
  new_track = Track.new("artist1", "track1") # initializes with 2 strings as values

  #test2
  new_track = Track.new("artist1", "track1")
  new_track.search("track1") # => true
```