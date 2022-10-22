class Song 

    # macro method
    attr_accessor :name, :artist, :genre

    # class attributes
   @@genres = []
    @@count = 0
    @@artists= []
    @@genre_count = {}
    @@artist_count = {}


    def initialize (name, artist, genre)
       @name = name
       @artist =  artist
       @genre = genre
       @@count += 1
       @@artists << @artist
       @@genres << @genre
    end
#   class methods
   def self.artists
    @@artists.uniq!
   end
   def self.genres
    @@genres.uniq!
   end
   def self.count
    @@count
   end

   def self.genre_count
    @@genre_count.default = 0
    @@genres.each{|genre| @@genre_count[genre] +=1}
    # @@genres.each {}
    @@genre_count
   end

   def self.artist_count
    @@artist_count.default = 0
    @@artists.each { |artist| @@artist_count[artist] += 1}
    @@artist_count
   end

end