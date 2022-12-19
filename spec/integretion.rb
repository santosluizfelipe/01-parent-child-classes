require 'music_library'
require 'track'

describe "integretion" do 
  it "construct" do 
    my_music = MusicLibrary.new 
    new_track = Track.new("artist1", "track1")
    my_music.add(new_track)
    expect(my_music.all).to eq [new_track]
  end

  it "returns the track the user did search" do 
    my_music = MusicLibrary.new 
    new_track1 = Track.new("artist1", "track1")
    new_track2 = Track.new("artist2", "track2")
    my_music.add(new_track1)
    my_music.add(new_track2)
    expect(my_music.search("track1")).to eq [new_track1]
  end
end