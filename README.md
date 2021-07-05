# **ETL Project (Project #2)** TEST

**Project Name:** "What are we watching?" (a.k.a Netflix, with absolutely no chill!)"
 
**Members:** [Harlan Brasek](https://github.com/habrasek), [Okyere Gyebi](https://github.com/Gyebi82), [Lovensky Lubin](https://github.com/Lubinl), Enkhsanaa Sommers

**Table of Contents:**

1. Sources
2. Summary
3. Technologies and Libraries
4. Project Instructions
#
# Sources
The sources of this project were extracted from:
1.  Kaggle ([NetflixOriginals.CSV](https://www.kaggle.com/luiscorter/netflix-original-films-imdb-scores))
2. [TMDB](https://www.themoviedb.org/) (for API calls)
3. IMDB json [Kaggle](https://www.kaggle.com/gorochu/complete-imdb-movies-dataset)
#
# Summary

## Extracting & Transforming Data
After reviewing the API docuentation in TMDB site. We concluded that we would need to pull the corresponding "Movie ID", for each film in our CSV. With this information we were than able to call in financial data (i.e. film budget/revenue) and preformer data (i.e. cast and gender).
In order to proceed into importing this data into a data base, we needed to run internal checks within our Jupyter Notebook files to make sure that, we were in fact pulling the appropriate data.


## Establishing the tables

PostgreSQL was our choice because we used it the most to run queries as SQLite was often done through Python.

4 tables were created to query from:
1. netflix- includes the title, genre, premeire date, run time, imdb rating, and languages of a movie or TV show from Netflix
2. performers- the id number, movie id, performer name, and gender of the performers from the Netflix shows and movies
3. tmdb- included tmdb movie id number, title, release date, budget, revenue, and profit (i.e. created manually using Profit and udget data) of the Netflix productions
4. actor_films - included the performer names and movies of over 50,000 movies


## Querying

The first query asked to make a table with the netflix performer
![image](https://github.com/Lubinl/Rutgers_DS_Project_2/blob/d82f3b625ae60c30978b2d593024f535826ca2a9/images/netflix_perfs.png)

The second query requested all of the additional films that Netflix star Selena Gomez has appeared in
![image](https://github.com/Lubinl/Rutgers_DS_Project_2/blob/d82f3b625ae60c30978b2d593024f535826ca2a9/images/selena.png)

The third query takes Netflix names and adds their release dates, but also takes different works with the same titles to show the need to be alert when using SQL
![image](https://github.com/Lubinl/Rutgers_DS_Project_2/blob/d82f3b625ae60c30978b2d593024f535826ca2a9/images/release.png)
#

# Technologies and Libraries
Programming and Scripting languages used the following programs pgAdmin4 (Version 5.2 (4280.88)) and Jupyter Notebook (Version 6.3.0). SQL ERD was composed with the use of [QuickDBD](https://www.quickdatabasediagrams.com/).

Applied use of the following libraries: 
- Pandas
- Numpy
- Requests
- JSON
- Time
- Datetime

# Project Instructions
Processing of the NetflixOriginals.csv file, required of of to first import into Jupyter notebook. We then converted the the 'Premiere' column from standard (e.g. January 1, 2021) date to ADATEw (e.g. 01-01-2021). We then verified that the Netflix CSV does not contain any null values. At this stage we proceed in pulling API calls form the TMDB site. We begin the first call by created empty list for the 'movie id', 'movie release date', and 'movie title'. Prior to beggining the for loop, we create a series of all movies within the NetflixOriginals dataframe, under the name movies. Using TMDB's API documentation we create a query url, to get responses. Within this For loop we try another loop through the results and pull 'title', 'id', and 'release_date', except in the case of the movie not being found.

This data was then used to create our 'pulled_flix_df', which consisted of an additional twop empty columns: Budget and Revenue. We than proceed to run a second API call. This time around we create two empty list for: 'Budget', 'Revenue', and 'drop_index'. We than run another for loop through our query url trying to pull buedgt and revenue data, except in the case of the data not eing there to pull. Once the financial data is there, we are able to populate the 'Profit' column with this info. This DataFrame was then saved as a CSV file. Using the data from this latest pull, we're ablbe to create the 'cast_df' dataframe with 'Movie_id', 'Move', and 'Premiere'. While leaving to an additional two empty rows called: 'Preformer' and 'Gender'.

Finally, for the last API call, we create 3 empty list: 'gender', 'preformer', and 'drop_index'. We then proceed  looping through the rows of our 'cast_df' dataframe entering the movie name and movie id of each row into our query url. Trying to populate all the preformer data and their corresponding gender into lists. Within this attempt we run a loop throuhg results and append the data into our 'preformer' and 'preformer gender' lists. If no data is found, the index of that row is added to the drop_index column. 

The remaining of the Movie_cleaning file consist of creating 'new_cast_df', consisting of: movie id, preformer, and gender. Making movie id the index and exploding the remaining columns and saved as a csv (i.e. PulledCastingData.csv). We then rename the 'Pulled_Movie_Name' of the pulled data csv, to 'title. Which is then merged with the initial dataframe (how='left' and on='Title'). Following this, we rename the 'movie_id' to 'pulled_id'. Which was merged with the previous merged file, to create our Master table.

In order to create the actor_films table, a lot of work had to be done. 

 A massive json file called 'movie.json' had to be handled, unfortunately it is to big to be uploaded to github.

As one can see, the actors column when pulled into a DataFrame is in list form.  The end goal is to have a DataFrame such that every actor in each list will have their own row, with the movie in the base row right next to them.  For instance Timothee Chalamet, Liev Schreiber, and Elle Fanning should each have their own row with "A rainy day in New York" written next to it.

![image](https://github.com/Lubinl/Rutgers_DS_Project_2/blob/119336cb963e0862cafef1e3e5513c639f7ba217/screenshots/step1.png)

Next all of the extraneous rows must be deleted and a list of titles and a list of the lists of actors must be stored in their own variables.  Then with copied_movies_list, you count the number of performers in each list and repeat the name of the movie that many times.  

![image](https://github.com/Lubinl/Rutgers_DS_Project_2/blob/119336cb963e0862cafef1e3e5513c639f7ba217/screenshots/step2.png)

In order to make the final DataFrame to be added to the 'actors.csv' the two elemets needed are the copied_movies_list and a list of the unwrapped actors.  The unwrapped actors is simply unlisting all of the actors and putting them into their own list.  The result is this:

![image](https://github.com/Lubinl/Rutgers_DS_Project_2/blob/119336cb963e0862cafef1e3e5513c639f7ba217/screenshots/step3.png)
