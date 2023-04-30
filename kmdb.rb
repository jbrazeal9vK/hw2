# In this assignment, you'll be using the domain model from hw1 (found in the hw1-solution.sql file)
# to create the database structure for "KMDB" (the Kellogg Movie Database).
# The end product will be a report that prints the movies and the top-billed
# cast for each movie in the database.

# To run this file, run the following command at your terminal prompt:
# `rails runner kmdb.rb`

# Requirements/assumptions
#
# - There will only be three movies in the database – the three films
#   that make up Christopher Nolan's Batman trilogy.
# - Movie data includes the movie title, year released, MPAA rating,
#   and studio.
# - There are many studios, and each studio produces many movies, but
#   a movie belongs to a single studio.
# - An actor can be in multiple movies.
# - Everything you need to do in this assignment is marked with TODO!

# Rubric
# 
# There are three deliverables for this assignment, all delivered within
# this repository and submitted via GitHub and Canvas:
# - Generate the models and migration files to match the domain model from hw1.
#   Table and columns should match the domain model. Execute the migration
#   files to create the tables in the database. (5 points)
# - Insert the "Batman" sample data using ruby code. Do not use hard-coded ids.
#   Delete any existing data beforehand so that each run of this script does not
#   create duplicate data. (5 points)
# - Query the data and loop through the results to display output similar to the
#   sample "report" below. (10 points)

# Submission
# 
# - "Use this template" to create a brand-new "hw2" repository in your
#   personal GitHub account, e.g. https://github.com/<USERNAME>/hw2
# - Do the assignment, committing and syncing often
# - When done, commit and sync a final time before submitting the GitHub
#   URL for the finished "hw2" repository as the "Website URL" for the 
#   Homework 2 assignment in Canvas

# Successful sample output is as shown:

# Movies
# ======

# Batman Begins          2005           PG-13  Warner Bros.
# The Dark Knight        2008           PG-13  Warner Bros.
# The Dark Knight Rises  2012           PG-13  Warner Bros.

# Top Cast
# ========

# Batman Begins          Christian Bale        Bruce Wayne
# Batman Begins          Michael Caine         Alfred
# Batman Begins          Liam Neeson           Ra's Al Ghul
# Batman Begins          Katie Holmes          Rachel Dawes
# Batman Begins          Gary Oldman           Commissioner Gordon
# The Dark Knight        Christian Bale        Bruce Wayne
# The Dark Knight        Heath Ledger          Joker
# The Dark Knight        Aaron Eckhart         Harvey Dent
# The Dark Knight        Michael Caine         Alfred
# The Dark Knight        Maggie Gyllenhaal     Rachel Dawes
# The Dark Knight Rises  Christian Bale        Bruce Wayne
# The Dark Knight Rises  Gary Oldman           Commissioner Gordon
# The Dark Knight Rises  Tom Hardy             Bane
# The Dark Knight Rises  Joseph Gordon-Levitt  John Blake
# The Dark Knight Rises  Anne Hathaway         Selina Kyle

# Delete existing data, so you'll start fresh each time this script is run.
# Use `Model.destroy_all` code.
STUDIO.destroy_all
MOVIE.destory_all
ACTOR.destory_all
ROLE.destory_all

# Generate models and tables, according to the domain model.


# Insert data into the database that reflects the sample data shown above.
# Do not use hard-coded foreign key IDs.

# Studio information
studio1 = studio.new
studio1["name"] = "Warner Bros."
studio1.save

# Movie information
movie1 = Movie.new
movie1["title"] = "Batman Begins"
movie1["year_released"] = 2005
movie1["rated"] = "PG-13"
movie1["studio_id"] = 1
movie1.save

movie2 = Movie.new
movie2["title"] = "The Dark Knight"
movie2["year_released"] = 2008
movie2["rated"] = "PG-13"
movie2["studio_id"] = 1
movie2.save

movie3 = Movie.new
movie3["title"] = "The Dark Knight Rises"
movie3["year_released"] = 2012
movie3["rated"] = "PG-13"
movie3["studio_id"] = 1
movie3.save

# Batman Begins information
actor1 = Actor.new
actor1["name"] = "Christian Bale"  #1
actor1.save

actor2 = Actor.new
actor2["name"] = "Michael Caine"  #2
actor2.save

actor3 = Actor.new
actor3["name"] = "Liam Neeson"  #3
actor3.save

actor4 = Actor.new
actor4["name"] = "Katie Holmes"  #4
actor4.save

actor5 = Actor.new
actor5["name"] = "Gary Oldman"  #5
actor5.save

role1 = ROLE.new
role1["movie_id"] = 1
role1["actor_id"] = 1
role1["character_name"] = "Bruce Wayne"
role1.save

role2 = ROLE.new
role2["movie_id"] = 1
role2["actor_id"] = 2
role2["character_name"] = "Alfred"
role2.save

role3 = ROLE.new
role3["movie_id"] = 1
role3["actor_id"] = 3
role3["character_name"] = "Ra's Al Ghul"
role3.save

role4 = ROLE.new
role4["movie_id"] = 1
role4["actor_id"] = 4
role4["character_name"] = "Rachel Dawes"
role4.save

role5 = ROLE.new
role5["movie_id"] = 1
role5["actor_id"] = 5
role5["character_name"] = "Commissioner Gordon"
role5.save

# The Dark Knight

actor6 = Actor.new
actor6["name"] = "Heath Ledger" #6
actor6.save

actor7 = Actor.new
actor7["name"] = "Aaron Eckhart"  #7
actor7.save

actor8 = Actor.new
actor8["name"] = "Maggie Gyllenhaal"  #8
actor8.save

role1_2 = ROLE.new
role1_2["movie_id"] = 2
role1_2["actor_id"] = 1
role1_2["character_name"] = "Bruce Wayne"
role1_2.save

role2_2 = ROLE.new
role2_2["movie_id"] = 2
role2_2["actor_id"] = 2
role2_2["character_name"] = "Alfred"
role2_2.save

role6 = ROLE.new
role6["movie_id"] = 2
role6["actor_id"] = 6
role6["character_name"] = "Joker"
role6.save

role7 = ROLE.new
role7["movie_id"] = 2
role7["actor_id"] = 7
role7["character_name"] = "Harvey Dent"
role7.save

role8 = ROLE.new
role8["movie_id"] = 2
role8["actor_id"] = 8
role8["character_name"] = "Rachel Dawes"
role8.save

# The Dark Knight Rises

actor9 = Actor.new
actor9["name"] = "Tom Hardy"  #9
actor9.save

actor10 = Actor.new
actor10["name"] = "Joseph Gordon-Levitt"  #10
actor10.save

actor11 = Actor.new
actor11["name"] = "Anne Hathaway"  #11
actor11.save

role1_3 = ROLE.new
role1_3["movie_id"] = 3
role1_3["actor_id"] = 1
role1_3["character_name"] = "Bruce Wayne"
role1_3.save

role5_3 = ROLE.new
role5_3["movie_id"] = 3
role5_3["actor_id"] = 5
role5_3["character_name"] = "Commissioner Gordon"
role5_3.save

role9 = ROLE.new
role9["movie_id"] = 3
role9["actor_id"] = 9
role9["character_name"] = "Bane"
role9.save

role10 = ROLE.new
role10["movie_id"] = 3
role10["actor_id"] = 10
role10["character_name"] = "John Blake"
role10.save

role11 = ROLE.new
role11["movie_id"] = 3
role11["actor_id"] = 11
role11["character_name"] = "Selina Kyle"
role11.save

# Prints a header for the movies output
puts "Movies"
puts "======"
puts ""

# Query the movies data and loop through the results to display the movies output.
# TODO!

# Prints a header for the cast output
puts ""
puts "Top Cast"
puts "========"
puts ""

# Query the cast data and loop through the results to display the cast output for each movie.
# TODO!
