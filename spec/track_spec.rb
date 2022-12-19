require 'track'

describe Track do 
  it "returns true if mathces includes in artist or track" do 
    new_track = Track.new("artist1", "track1")
    expect(new_track.matches?("track1")).to eq true
  end
end