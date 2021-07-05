SELECT* FROM nflx_movie;
SELECT* FROM nflx_m_runtime;
SELECT* FROM nflx_actors;
SELECT* FROM nflx_languages;


DROP TABLE genre_table;
DROP TABLE language_table;
DROP TABLE runtime_table_cln;
DROP TABLE actors_table;



CREATE TABLE genre_table
(
    title_id INT NOT NULL,
    genre_id INT NOT NULL,
    CONSTRAINT PK_genre_table PRIMARY KEY
    (
        title_id,
        genre_id
    ),
    FOREIGN KEY (StudentID) REFERENCES Students (StudentID),
    FOREIGN KEY (ClassroomID) REFERENCES Classrooms (ClassroomID)
)

