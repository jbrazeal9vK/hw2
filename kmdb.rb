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
Studio.destroy_all
Movie.destroy_all
Actor.destroy_all
Role.destroy_all

# Generate models and tables, according to the domain model.


# Insert data into the database that reflects the sample data shown above.
# Do not use hard-coded foreign key IDs.

# Studio information
studio1 = Studio.new
studio1["name"] = "Warner Bros."
studio1.save

# Save Warner bros into a variable
warner = Studio.find_by({"name" => "Warner Bros."})

# Movie information
begins = Movie.new
begins["title"] = "Batman Begins"
begins["year_released"] = 2005
begins["rated"] = "PG-13"
begins["studio_id"] = warner["id"]
begins.save

dark_knight = Movie.new
dark_knight["title"] = "The Dark Knight"
dark_knight["year_released"] = 2008
dark_knight["rated"] = "PG-13"
dark_knight["studio_id"] = warner["id"]
dark_knight.save

rises = Movie.new
rises["title"] = "The Dark Knight Rises"
rises["year_released"] = 2012
rises["rated"] = "PG-13"
rises["studio_id"] = warner["id"]
rises.save

# All actors

christian_bale = Actor.new
christian_bale["name"] = "Christian Bale"  #1
christian_bale.save

michael_caine = Actor.new
michael_caine["name"] = "Michael Caine"  #2
michael_caine.save

liam_neeson = Actor.new
liam_neeson["name"] = "Liam Neeson"  #3
liam_neeson.save

katie_holmes = Actor.new
katie_holmes["name"] = "Katie Holmes"  #4
katie_holmes.save

gary_oldman = Actor.new
gary_oldman["name"] = "Gary Oldman"  #5
gary_oldman.save

heath_ledger = Actor.new
heath_ledger["name"] = "Heath Ledger" #6
heath_ledger.save

aaron_eckhart = Actor.new
aaron_eckhart["name"] = "Aaron Eckhart"  #7
aaron_eckhart.save

maggie_gyllenhaal = Actor.new
maggie_gyllenhaal["name"] = "Maggie Gyllenhaal"  #8
maggie_gyllenhaal.save

tom_hardy = Actor.new
tom_hardy["name"] = "Tom Hardy"  #9
tom_hardy.save

joseph_gordon_levitt = Actor.new
joseph_gordon_levitt["name"] = "Joseph Gordon-Levitt"  #10
joseph_gordon_levitt.save

anne_hathaway = Actor.new
anne_hathaway["name"] = "Anne Hathaway"  #11
anne_hathaway.save



# Batman begins
role1 = Role.new
role1["movie_id"] = begins["id"]
role1["actor_id"] = christian_bale["id"]
role1["character_name"] = "Bruce Wayne"
role1.save

begins_wayne = Role.new
begins_wayne["movie_id"] = begins["id"]
begins_wayne["actor_id"] = christian_bale["id"]
begins_wayne["character_name"] = "Bruce Wayne"
begins_wayne.save

begins_wayne = Role.new
begins_wayne["movie_id"] = begins["id"]
begins_wayne["actor_id"] = christian_bale["id"]
begins_wayne["character_name"] = "Bruce Wayne"
begins_wayne.save

begins_alfred = Role.new
begins_alfred["movie_id"] = begins["id"]
begins_alfred["actor_id"] = michael_caine["id"]
begins_alfred["character_name"] = "Alfred"
begins_alfred.save

begins_ras = Role.new
begins_ras["movie_id"] = begins["id"]
begins_ras["actor_id"] = liam_neeson["id"]
begins_ras["character_name"] = "Ra's Al Ghul"
begins_ras.save

begins_rachel = Role.new
begins_rachel["movie_id"] = begins["id"]
begins_rachel["actor_id"] = katie_holmes["id"]
begins_rachel["character_name"] = "Rachel Dawes"
begins_rachel.save

begins_gordon = Role.new
begins_gordon["movie_id"] = begins["id"]
begins_gordon["actor_id"] = gary_oldman["id"]
begins_gordon["character_name"] = "Commissioner Gordon"
begins_gordon.save

#The Dark Knight
dk_wayne = Role.new
dk_wayne["movie_id"] = dark_knight["id"]
dk_wayne["actor_id"] = christian_bale["id"]
dk_wayne["character_name"] = "Bruce Wayne"
dk_wayne.save

dk_alfred = Role.new
dk_alfred["movie_id"] = dark_knight["id"]
dk_alfred["actor_id"] = michael_caine["id"]
dk_alfred["character_name"] = "Alfred"
dk_alfred.save

dk_joker = Role.new
dk_joker["movie_id"] = dark_knight["id"]
dk_joker["actor_id"] = heath_ledger["id"]
dk_joker["character_name"] = "Joker"
dk_joker.save

dk_harvey = Role.new
dk_harvey["movie_id"] = dark_knight["id"]
dk_harvey["actor_id"] = aaron_eckhart["id"]
dk_harvey["character_name"] = "Harvey Dent"
dk_harvey.save

dk_rachel = Role.new
dk_rachel["movie_id"] = dark_knight["id"]
dk_rachel["actor_id"] = maggie_gyllenhaal["id"]
dk_rachel["character_name"] = "Rachel Dawes"
dk_rachel.save

#The Dark Knight Rises
rises_wayne = Role.new
rises_wayne['movie_id'] = rises['id']
rises_wayne['actor_id'] = christian_bale['id']
rises_wayne['character_name'] = 'Bruce Wayne'
rises_wayne.save

rises_gordon = Role.new
rises_gordon['movie_id'] = rises['id']
rises_gordon['actor_id'] = gary_oldman['id']
rises_gordon['character_name'] = 'Commissioner Gordon'
rises_gordon.save

rises_bane = Role.new
rises_bane['movie_id'] = rises['id']
rises_bane['actor_id'] = tom_hardy['id']
rises_bane['character_name'] = 'Bane'
rises_bane.save

rises_blake = Role.new
rises_blake['movie_id'] = rises['id']
rises_blake['actor_id'] = joseph_gordon_levitt['id']
rises_blake['character_name'] = 'John Blake'
rises_blake.save

rises_kyle = Role.new
rises_kyle['movie_id'] = rises['id']
rises_kyle['actor_id'] = anne_hathaway['id']
rises_kyle['character_name'] = 'Selina Kyle'
rises_kyle.save

# Prints a header for the movies output
puts "Movies"
puts "======"
puts ""

# Query the movies data and loop through the results to display the movies output.
for each_movie

# Prints a header for the cast output
puts ""
puts "Top Cast"
puts "========"
puts ""

# Query the cast data and loop through the results to display the cast output for each movie.
# TODO!
