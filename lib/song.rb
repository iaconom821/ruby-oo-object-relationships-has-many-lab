require 'pry'
require_relative './artist'

class Song

    @@all = []
    def initialize()
        @@all << self
    end
end
