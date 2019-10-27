require('minitest/autorun')
require('minitest/rg')
require_relative('../room.rb')
require_relative('../song.rb')
require_relative('../guest.rb')
require_relative('../bar.rb')

class BarTest < MiniTest::Test

  def setup

    @bar = Bar.new("Lebowskis")

    @guest1 = Guest.new("Jimothy", 100, "Tragedy")
    @guest2 = Guest.new("Jennether", 100, "Happy Birthday")

    @song1 = Song.new("Tragedy", "When the feeling's gone and you can't go on it's tragedy")
    @song2 = Song.new("Happy Birthday", "Happy Birthday to you")

    @song_library = [@song1, @song2]

    @blue_room = Room.new("Blue Room", 2, @song_library)


      def test_guests_check_in_roo


      end

      def test_guests_check_out

      end

      def test_add_songs




  end
