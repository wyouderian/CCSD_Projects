#Page 58
create database henry_movies;
use henry_movies;

#Question 1a
create table director
(dir_number decimal(5,0) primary key,
last_name varchar(30) not null,
first_name varchar(30) not null,	
YOB decimal(4,0) not null,
YOD decimal(4,0) 
);

#Question 1b 
create table movie 
(movie_num decimal (6,0) primary key,
title varchar(40) not null,
year_made decimal(4,0) not null,
movie_type varchar(15) not null,

-- #Question 1c
dir_number decimal(5,0) not null,
critic_rating decimal(2,1),
mpaa_rating decimal(2,1),
award_noms decimal(3,0),
award_wins decimal(3,0) 
);

#Question 1d
create table star
(star_num decimal(9,0) primary key,
last_name varchar(15) not null,
first_name varchar(15) not null,

birthplace varchar(200) not null,
YOB decimal(4,0) not null,
YOD decimal(4,0) 
);

#Question 1e & 1f 
create table movie_actor_association
(movie_num decimal (6,0),
star_num decimal (9,0),
primary key (movie_num, star_num)
);

#Sample entry
insert into director values(1, 'Scott', 'Tony', 1944, 2012);
insert into movie (movie_num, title, year_made, movie_type, dir_number) values( 1, 'Top Gun', 1986, 'Action', 1);