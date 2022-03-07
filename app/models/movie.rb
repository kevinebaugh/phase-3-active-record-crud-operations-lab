class Movie < ActiveRecord::Base
  def self.create_with_title(title)
    movie = Movie.new(title: title)
    movie.save
    movie
  end

  def self.first_movie
    Movie.first
  end

  def self.last_movie
    Movie.last
  end

  def self.find_movie_with_id(id)
    Movie.where(id: id).first
  end

  def self.find_movie_with_attributes(attributes)
    Movie.find_by(attributes)
  end

  def self.find_movies_after_2002
    Movie.where("release_date > 2002")
  end

  def self.movie_count
    Movie.count
  end

  def update_with_attributes(attributes)
    self.update(attributes)
  end

  def self.update_all_titles(title)
    Movie.all.each do |movie|
      movie.update(title: title)
    end
  end

  def self.delete_by_id(id)
    Movie.find(id).delete
  end

  def self.delete_all_movies
    Movie.all.each do |movie|
      self.delete_by_id(movie.id)
    end
  end

end
