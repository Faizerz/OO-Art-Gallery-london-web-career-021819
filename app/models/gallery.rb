class Gallery

  attr_reader :name, :city

  @@all = []

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  def self.all
    @@all << self
  end

  def paintings
    Painting.all.select{|painting| painting.gallery == self}
  end

  def artists
    paintings.map{|painting| painting.artist}.uniq
  end

  def artist_names
    artists.map{|artist| artist.name}
  end

  def most_expensive_painting
    max_price = 0
    max_painting = nil
    paintings.each do |painting|
      if painting.price > max_price
        max_price = painting.price
        max_painting = painting
      end
    end
  max_painting
  end

end
