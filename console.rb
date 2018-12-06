require('pry')

require_relative("models/casting")
require_relative("models/movie")
require_relative("models/star")

movie1 = Movie.new({'title' => 'The Terminator', 'genre' => 'Action'})
movie1.save()
movie2 = Movie.new({'title' => 'Terminator 2: Judgement Day', 'genre' => 'Action'})
movie2.save()
movie3 = Movie.new({'title' => 'Twins', 'genre' => 'Comedy'})
movie3.save()
movie4 = Movie.new({'title' => 'Nutty Professor', 'genre' => 'Comedy'})
movie4.save()

star1 = Star.new({'first_name' => 'Arnold', 'last_name' => 'Schwarzenegger'})
star1.save()
star2 = Star.new({'first_name' => 'Danny', 'last_name' => 'DeVito'})
star2.save()
star3 = Star.new({'first_name' => 'Eddie', 'last_name' => 'Murphy'})
star3.save()


casting1 = Casting.new({'movie_id' => movie1.id, 'star_id' => star1.id, 'fee' => '10'})
casting1.save()
casting2 = Casting.new({'movie_id' => movie2.id, 'star_id' => star1.id, 'fee' => '15'})
casting2.save()
casting3 = Casting.new({'movie_id' => movie3.id, 'star_id' => star1.id, 'fee' => '10'})
casting3.save()
casting4 = Casting.new({'movie_id' => movie3.id, 'star_id' => star2.id, 'fee' => '5'})
casting4.save()
casting5 = Casting.new({'movie_id' => movie4.id, 'star_id' => star3.id, 'fee' => '15'})
casting5.save()

binding.pry
nil
