require('minitest/autorun')
require('minitest/rg')
require_relative('../guest.rb')

class GuestTest < MiniTest::Test

  def setup
    @guest = Guest.new("Jimothy", 100, "Tragedy")
  end

  def test_check_guest_name
    assert_equal("Jimothy", @guest.name())
  end

  def test_get_fav_song
    assert_equal("Tragedy", @guest.fav_song())
  end

end
