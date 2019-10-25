require('minitest/autorun')
require('minitest/rg')
require_relative('../song.rb')

class SongTest < MiniTest::Test

  def setup
    @song = Song.new("Happy Birthday", "Happy Birthday to you")
  end

  def test_check_song_name
    assert_equal("Happy Birthday", @song.name())
  end

  def test_get_lyrics
    assert_equal("Happy Birthday to you", @song.send_lyrics)
  end


end
