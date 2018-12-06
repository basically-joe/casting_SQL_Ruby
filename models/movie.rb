require_relative("../db/sql_runner")
require_relative("star")

class Movie

  attr_reader :id
  attr_accessor :title, :genre

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @title = options['title']
    @genre = options['genre']
  end

def star
  sql = "SELECT stars.* FROM
  stars INNER JOIN castings
  ON stars.id = castings.star_id
  WHERE castings.movie_id = $1"
  values = [@id]
  stars_hashes = SqlRunner.run(sql, values)
  return stars_hashes.map { |star| Star.new(star) }
end

  def save()
    sql = "INSERT INTO movies
    (
      title,
      genre
    )
    VALUES
    ($1, $2)
    RETURNING id"
    values = [@title, @genre]
    movie = SqlRunner.run(sql, values).first
    @id = movie['id'].to_i
  end

  def self.all()
    sql = "SELECT * FROM movies"
    values = []
    movies = SqlRunner.run(sql, values)
    result = movies.map { |movie| Movie.new(movie) }
    return result
  end

end
