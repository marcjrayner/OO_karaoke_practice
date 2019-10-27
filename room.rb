require_relative('./song.rb')
require_relative('./guest.rb')

class Room

  attr_reader :name, :capacity, :guests, :exit, :song_library, :screen

  def initialize(name, capacity, song_library)
    @name = name
    @capacity = capacity
    @guests = []
    @check_out = []
    @song_library = song_library
    @screen = ""
  end

  def play_karaoke(song_name)
    @song_library.each { |song| @screen << song.send_lyrics() if song.name() == song_name}
  end

  def add_guests(guests_in)
    guests_in.each{ |guest| @guests.push(guest) }
  end

  def remove_guests
    @guests.each{ |guest| @check_out.push(guest) }
    @guests.clear()
  end


end
