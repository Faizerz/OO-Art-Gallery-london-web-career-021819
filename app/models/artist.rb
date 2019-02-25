class Artist

  attr_reader :name, :years_experience

  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select{|painting| painting.artist == self}
  end

  def galleries
    paintings.map{|painting| painting.gallery}.uniq
  end

  def cities
    galleries.map{|gallery| gallery.city}
  end

  def self.total_experience
    count = 0
    @@all.each {|artist| count += artist.years_experience}
    count
  end

  def self.most_prolific
    highest_ppy = 0.0
    highest_artist = nil
    @@all.each do |artist|
      years = artist.years_experience.to_f
      painting_count = Painting.all.select{|painting| painting.artist == artist}.count.to_f
      if painting_count/years > highest_ppy
        highest_ppy = painting_count/years
        highest_artist = artist
      end
    end
    highest_artist
  end

  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end

end
