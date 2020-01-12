# ETL Project: Movie Remakes - Are Movie Remakes Better Than Their Originals?

### January 2020
### Author: Kasie Wong

![](movie_remake_posters.png)

## Project Description
Hollywood production houses love to reuse and recycle popular story ideas, often by telling the same story and updating it for contemporary audiences. While many embrace the nostalgia of watching familiar storylines, most movie buffs insist that the original movie is almost always better. So which is it?

This project is aims to prepare the preliminary data to answer this very question! 

These two Jupyter notebooks were used to scrape Wikipedia's full list of movie remakes and their original titles. This list was then queried using OMDb's API to pull their respective IMDb movie categories and ratings. Data was then cleaned, transformed, and exported into several csv files. These csv files were then uploaded and combined into a PostgreSQL database that can be used to analyze movie remake data in detail.
  
## Run Instructions
1) Run CleanMovieData.ipynb - This scrapes, cleans, and transforms the movie remake data and exports it into csv's.
2) Open Postgres and run the PostreSQL server (pgAdmin4).
2) Create a PostgreSQL db called, "movies_db."
3) Import and run create_tables.sql in the movies_db Query Editor. This creates the data tables in movies_db.
4) Run ImportDataPostgreSQLdb.ipynb - This reads, transforms, and upload the csv files into Postgres movie_db.

## Data Sources
| Data  | Retrieval Method |  Source  |
| ------------- | ------------- | ------------- | 
| List of Movie Remakes & Originals A-M  | Web scraping  | https://en.wikipedia.org/wiki/List_of_film_remakes_(A%E2%80%93M) |
| List of Movie Remakes & Originals N-Z  | Web scraping  | https://en.wikipedia.org/wiki/List_of_film_remakes_(N%E2%80%93Z) |
| IMDb Film Data  | OMDb API  | http://www.omdbapi.com/ |
