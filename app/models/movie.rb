require 'pry'
class Movie < ActiveRecord::Base
    def self.create_with_title(title)
        Movie.create(title: title)
    end
#Read
#first movie
    def self.first_movie
        Movie.first
    end

#find movie by using id
    def self.find_movie_with_id(id)
        Movie.find(id)
end

#movie count
    def self.movie_count
        Movie.count
    end

#last movie
    def self.last_movie
        Movie.last
        end
#find movie wirh attributes
        def self.find_movie_with_attributes(attribute)
            Movie.find_by(attribute)
            end
#Find films released after 2002
        def self.find_movies_after_2002
            Movie.where('release_date > 2002')
        end

#Update
#update with attributes .
        def update_with_attributes(attributes)
            self.update(attributes)
        end

#update all titles
        def self.update_all_titles(title)
            Movie.update(title: title)
            end

#Delete
#delete by id
            def self.delete_by_id(id)
                Movie.destroy(id)
                end
                

#Delete all movies
            def self.delete_all_movies
                Movie.destroy_all
            end

            end