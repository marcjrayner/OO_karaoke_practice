require_relative('./song.rb')
require_relative('./guest.rb')
require_relative('./room.rb')


class Bar

  def initialize(name, till)
    @name = name
    @till = till
    @rooms = []

  end




def create_room(name, capacity)
  room = Room.new(name, capacity)
end

def create_song_add_to_library(name, lyrics)
  song = Song.new(name, lyrics)
  room.song_library.push(song)
end

def check_in_guest(guest_name, fav_song)
  guest = guest.new
  room
end

def check_out_guest
end



end
