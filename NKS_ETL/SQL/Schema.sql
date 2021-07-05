--movie_db schema

CREATE TABLE "nflx_movie" (
    "title_id" INT   NOT NULL,
    "title" VARCHAR(255)   NOT NULL,
    "numb_of_versions" INT   NOT NULL,
    CONSTRAINT "pk_nflx_movie" PRIMARY KEY (
        "title_id"
     )
);

CREATE TABLE "nflx_actors" (
    "actor_id" INT   NOT NULL,
    "actors" VARCHAR(255)   NOT NULL,
    "appearance" INT   NOT NULL,
    CONSTRAINT "pk_nflx_actors" PRIMARY KEY (
        "actor_id"
     )
);

CREATE TABLE "nflx_m_runtime" (
    "rt_id" INT   NOT NULL,
    "r_time" DEC   NOT NULL,
    "occurrences" INT   NOT NULL,
    CONSTRAINT "pk_nflx_m_runtime" PRIMARY KEY (
        "rt_id"
     )
);

CREATE TABLE "nflx_languages" (
    "lang_id" INT   NOT NULL,
    "languages" VARCHAR(255)   NOT NULL,
    "frequency" INT   NOT NULL,
    CONSTRAINT "pk_nflx_languages" PRIMARY KEY (
        "lang_id"
     )
);

CREATE TABLE "nflx_genres" (
    "genre_id" INT   NOT NULL,
    "genre" VARCHAR(255)   NOT NULL,
    "freq" INT   NOT NULL,
    CONSTRAINT "pk_nflx_genres" PRIMARY KEY (
        "genre_id"
     )
);

CREATE TABLE "genre_table" (
    "title_id" INT   NOT NULL,
    "genre_id" INT   NOT NULL
);

CREATE TABLE "language_table" (
    "title_id" INT   NOT NULL,
    "lang_id" INT   NOT NULL
);

CREATE TABLE "runtime_table_cln" (
    "title_id" INT   NOT NULL,
    "rt_id" INT   NOT NULL
);

CREATE TABLE "actors_table" (
    "title_id" INT   NOT NULL,
    "actor_id" INT   NOT NULL
);

