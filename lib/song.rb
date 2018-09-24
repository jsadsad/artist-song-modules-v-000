require 'pry'

class Song
  attr_accessor :name
  attr_reader :artist
  
  extend Memorable::ClassMethods
  extend Findable::ClassMethods
  include Paramable::InstanceMethods

  @@songs = []

  def initialize
    self.class.all << self
  end

  def self.all
    @@songs
  end

  def artist=(artist)
    @artist = artist
  end
end
