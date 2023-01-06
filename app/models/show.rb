require 'pry'

class Show < ActiveRecord::Base

    def self.highest_rating
        self.maximum(:rating) 
    end

    def self.most_popular_show
        self.where("rating =?", self.highest_rating).first
    end

    def self.lowest_rating
        self.minimum(:rating)
    end

    



end



s1 = Show.new({name: "Show 1", network: "test", day: "test", rating: 5, season: "test"})
s2 = Show.new({name: "Show 2", network: "test", day: "test", rating: 6, season: "test"})
s3 = Show.new({name: "Show 3", network: "test", day: "test", rating: 10, season: "test"})

binding.pry

# run "learn test" to get into pry session