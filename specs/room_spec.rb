require('minitest/autorun')
require('minitest/rg')
require_relative('../room.rb')
require_relative('../song.rb')
require_relative('../guest.rb')


class RoomTest < MiniTest::Test

  def setup
    @guest1 = Guest.new("Jimothy", 100, "Tragedy")
    @guest2 = Guest.new("Jennether", 100, "Happy Birthday")

    @song1 = Song.new("Tragedy", "When the feeling's gone and you can't go on it's tragedy")
    @song2 = Song.new("Happy Birthday", "Happy Birthday to you")

    @blue_room = Room.new("Blue Room", 2)

  end

  def test_check_room_name()
    assert_equal("Blue Room", @blue_room.name())
  end

  def test_room_capacity()
    assert_equal(2, @blue_room.capacity())
  end

  def test_get_song_library
    @blue_room.add_song(@song1)
    @blue_room.add_song(@song2)
    assert_equal([@song1, @song2], @blue_room.song_library())
  end

  def test_can_play_karaoke
    @blue_room.add_song(@song1)
    @blue_room.add_song(@song2)
    @blue_room.play_karaoke("Happy Birthday")
    assert_equal("Happy Birthday to you", @blue_room.screen())
  end

  def test_can_add_guests
    @blue_room.add_guests([@guest1, @guest2])
    assert_equal([@guest1, @guest2], @blue_room.guests())
  end

  def test_can_remove_guests
    @blue_room.add_guests([@guest1, @guest2])
    @blue_room.remove_guests()
    assert_equal([],@blue_room.guests())
  end

  def test_add_song
    @blue_room.add_song(@song1)
    @blue_room.add_song(@song2)
    assert_equal(2, @blue_room.song_library.length())
  end



end
