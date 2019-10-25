class Song

  attr_reader :name, :lyrics

  def initialize(name, lyrics)
    @name = name
    @lyrics = lyrics
  end

  def send_lyrics
    return @lyrics
  end


end
