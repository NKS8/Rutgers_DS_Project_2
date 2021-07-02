# **ETL Project (Project #2)**

**Project Name:** "What are we watching?" (a.k.a Netflix, with absolutely no chill!)"
 
**Members:** [Harlan Brasek](https://github.com/habrasek), [Okyere Gyebi](https://github.com/Gyebi82), [Lovensky Lubin](https://github.com/Lubinl), [Enkhsanaa Sommers](https://github.com/NKS8)

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

# Project Instructions
In order to create the actor_films table, a lot of work had to be done.  A massive json file called 'movie.json' had to be handled, unfortunately it is to big to be uploaded to github.

As one can see, the actors column when pulled into a DataFrame is in list form.  The end goal is to have a DataFrame such that every actor in each list will have their own row, with the movie in the base row right next to them.  For instance Timothee Chalamet, Liev Schreiber, and Elle Fanning should each have their own row with "A rainy day in New York" written next to it.

![image](https://github.com/Lubinl/Rutgers_DS_Project_2/blob/119336cb963e0862cafef1e3e5513c639f7ba217/screenshots/step1.png)

Next all of the extraneous rows must be deleted and a list of titles and a list of the lists of actors must be stored in their own variables.  Then with copied_movies_list, you count the number of performers in each list and repeat the name of the movie that many times.  

![image](https://github.com/Lubinl/Rutgers_DS_Project_2/blob/119336cb963e0862cafef1e3e5513c639f7ba217/screenshots/step2.png)

In order to make the final DataFrame to be added to the 'actors.csv' the two elemets needed are the copied_movies_list and a list of the unwrapped actors.  The unwrapped actors is simply unlisting all of the actors and putting them into their own list.  The result is this:

![image](https://github.com/Lubinl/Rutgers_DS_Project_2/blob/119336cb963e0862cafef1e3e5513c639f7ba217/screenshots/step3.png)
