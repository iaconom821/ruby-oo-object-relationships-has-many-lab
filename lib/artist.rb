require 'pry'
require_relative './song'

class Artist
    attr_accessor :name, :song 

    def initialize(name)
        @name = name 
        @song = []
    end

    def songs
        @song = Song.all.select {|song_instance| song_instance.artist == self}
        @song 
    end

    def add_song(song)
        song.artist = self 
    end

    def add_song_by_name(song_name)
        new_song = Song.new(song_name)
        new_song.artist = self 
    end

    def self.song_count
        Song.all.length
    end


end