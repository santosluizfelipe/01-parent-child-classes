require 'music_library'

describe MusicLibrary do 
  it "lists all tracks in the music library array" do 
    my_music = MusicLibrary.new
    track1 = double :track
    track2 = double :track
    my_music.add(track1)
    my_music.add(track2)
    expect(my_music.all).to eq [track1, track2]
  end

  it "searchs for a specific track" do 
    my_music = MusicLibrary.new
    fake_data1 = double :track, matches?: true
    fake_data2 = double :track, matches?: false
    my_music.add(fake_data1)
    my_music.add(fake_data2)
    expect(my_music.search("world")).to eq [fake_data1]
  end

  
end