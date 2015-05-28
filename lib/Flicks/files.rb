require_relative 'movie'

movie1 = Movie.new("goonies", 10)
movie2 = Movie.new("ghostbusters", 9)
movie3 = Movie.new("goldfinger")

movies = [movie1, movie2, movie3]

File.open("movie_rankings.csv", "w") do |file|
  movies.sort.each do |m|
    file.puts "#{movie.title},#{movie.rank}"
  end
end
