 

# Replace the '__' in the below methods to to make the specs pass!

# Each '__' corresponds to a single line of code you will need to write.

# See the example below on the left and how it should look on the right.

# def make_a_new_movie_instance    # def make_a_new_movie_instance

#   movie = __                     #   movie = Movie.new

# end                              # end

<<<<<<< HEAD
 

def can_be_instantiated_and_then_saved #create a new instance of a movie and save it

  movie = Movie.new

  movie.title = "This is a title."

  movie.save

=======
def can_be_instantiated_and_then_saved #create a new instance of a movie and save it
  movie = Movie.new
  movie.title = "This is a title."
  movie.save
>>>>>>> 000bc253ff8e5da19f1050a61b3f8e918ef416bd
end

 

def can_be_created_with_a_hash_of_attributes

  # Initialize movie and then and save it

  attributes = {

      title: "The Sting",

      release_date: 1973,

      director: "George Roy Hill",

      lead: "Paul Newman",

      in_theaters: false

  }
<<<<<<< HEAD

  movie = Movie.create(attributes)

end

 

def can_be_created_in_a_block(args = {title: "Home Alone", release_date: 1990}) #arguments are title: title name and release date: release date; must be a hash to contain multiple keys and values

=======
  movie = Movie.create(attributes)
end

def can_be_created_in_a_block(args = {title: "Home Alone", release_date: 1990}) #arguments are title: title name and release date: release date; must be a hash to contain multiple keys and values
>>>>>>> 000bc253ff8e5da19f1050a61b3f8e918ef416bd
  # If no arguments are passed, use default values:

  # title == "Home Alone"

  # release_date == 1990

 

  Movie.create do |m|
<<<<<<< HEAD

    m.title = args[:title]

    m.release_date = args[:release_date]

    m.save

=======
    movie.title = args[:title]
    movie.release_date = args[:release_date]
    movie.save
>>>>>>> 000bc253ff8e5da19f1050a61b3f8e918ef416bd
  end

end

<<<<<<< HEAD
 

def can_get_the_first_item_in_the_database #Not an instance of a movie but the entire database; has to be movie class

  Movie.first

=======
def can_get_the_first_item_in_the_database #Not an instance of a movie but the entire database; has to be movie class
  Movie.first
>>>>>>> 000bc253ff8e5da19f1050a61b3f8e918ef416bd
end

 

def can_get_the_last_item_in_the_database
<<<<<<< HEAD

  Movie.last

=======
  Movie.last
>>>>>>> 000bc253ff8e5da19f1050a61b3f8e918ef416bd
end

 

def can_get_size_of_the_database
<<<<<<< HEAD

  Movie.all.length

end

 

def can_find_the_first_item_from_the_database_using_id #find using id, not index

  Movie.find(1)

=======
  Movie.all.length
end

def can_find_the_first_item_from_the_database_using_id #find using id, not index
  Movie.find(1)
>>>>>>> 000bc253ff8e5da19f1050a61b3f8e918ef416bd
end

 

def can_find_by_multiple_attributes

  # Search Values:

  # title == "Title"

  # release_date == 2000

  # director == "Me"
<<<<<<< HEAD

  Movie.find_by(title: "Title")

  Movie.find_by(release_date: 2000)

  Movie.find_by(director: "Me")

=======
  Movie.find_by(title: "Title")
  Movie.find_by(release_date: 2000)
  Movie.find_by(director: "Me")
>>>>>>> 000bc253ff8e5da19f1050a61b3f8e918ef416bd
end

 

def can_find_using_where_clause_and_be_sorted

  # For this test return all movies released after 2002 and ordered by

  # release date descending
<<<<<<< HEAD

  movie = Movie.where("release_date > 2002").order(release_date: :desc)

=======
  movie = Movie.where(release_date > 2002).order(release_date: :desc)
>>>>>>> 000bc253ff8e5da19f1050a61b3f8e918ef416bd
end

 

def can_be_found_updated_and_saved

  # Updtate the title "Awesome Flick" to "Even Awesomer Flick", save it, then return it

  Movie.create(title: "Awesome Flick")
  
  movie = Movie.find_by(title: "Awesome Flick")
  movie.update(title: "Even Awesomer Flick")
  movie

end

 

def can_update_using_update_method

  # Update movie title to "Wat, huh?"

  Movie.create(title: "Wat?")

  movie = Movie.find_by(title: "Wat?")
  movie.update(title: "Wat, huh?")
  movie

end

 

def can_update_multiple_items_at_once

  # Change title of all movies to "A Movie"

  5.times do |i|

    Movie.create(title: "Movie_#{i}", release_date: 2000+i)

  end

  Movie.update_all(title: "A Movie")

end

 

def can_destroy_a_single_item

  Movie.create(title: "That One Where the Guy Kicks Another Guy Once")

  movie = Movie.find_by(title: "That One Where the Guy Kicks Another Guy Once")
  movie.destroy

end

 

def can_destroy_all_items_at_once

  10.times do |i|

    Movie.create(title: "Movie_#{i}")

  end
  Movie.destroy_all
end