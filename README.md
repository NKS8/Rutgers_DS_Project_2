# Rutgers_DS_Project_2





#Establishing the tables

PostgreSQL was our choice because we used it the most to run queries as SQLite was often done through Python.

4 tables were created to query from:
1. netflix- includes the title, genre, premeire date, run time, imdb rating, and languages of a movie or TV show from Netflix
2. performers- the id number, movie id, performer name, and gender of the performers from the Netflix shows and movies
3. tmdb- included tmdb movie id number, title, release date, budget, revenue, and profit of the Netflix productions
4. actor_fimls - included the performer names and movies of over 50,000 movies


#Querying

The first query asked to make a table with the netflix performer
![image](https://github.com/Lubinl/Rutgers_DS_Project_2/blob/d82f3b625ae60c30978b2d593024f535826ca2a9/images/netflix_perfs.png)

The second query requested all of the additional films that Netflix star Selena Gomez has appeared in
![image](https://github.com/Lubinl/Rutgers_DS_Project_2/blob/d82f3b625ae60c30978b2d593024f535826ca2a9/images/selena.png)

The third query takes Netflix names and adds their release dates, but also takes different works with the same titles to show the need to be alert when using SQL
![image](https://github.com/Lubinl/Rutgers_DS_Project_2/blob/d82f3b625ae60c30978b2d593024f535826ca2a9/images/release.png)
