require 'pry'
require_relative './artist'

class Song
    attr_accessor :name, :artist

    @@all = []
    def initialize(name)
        @@all << self
        @name = name 
    end

    def self.all
        @@all
    end

    def artist_name
        if self.artist
            self.artist.name 
        else
            nil
        end
    end

end
