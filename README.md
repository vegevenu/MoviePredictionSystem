# MoviePredictionSystem
Created a data model that fulfills the following requirements:
•      Track users, movies, and movie ratings by users
•      Built tables fields which will be useful/required.
•      Saved the DDL for the database to a file called "ddl.sql".
•      Populated each of the tables with some sample data and  saved these inserts in a file called "sample_data.sql".
•      Using Java/Spring, wrote RESTful API methods that return the following :
                  •      Given a userId, return all movies that user has watched and the total count, as well as the rating for that movie.
                  •      Given a parameter of "movieId", return its average rating.
                  •      Given a genre such as "action" and a userId, return the top 5 movies for that genre by average rating, where the rating was made by other users within 5 years (older and younger) of the user's age.
