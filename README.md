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
3. JSON file (i.e. ?)
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
4. actor_fimls - included the performer names and movies of over 50,000 movies


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