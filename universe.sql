--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: aditional_table; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.aditional_table (
    name character varying(30) NOT NULL,
    aditional_table_id integer NOT NULL,
    distance_from_earth numeric(6,2)
);


ALTER TABLE public.aditional_table OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    has_life boolean,
    age_in_milions_of_years integer,
    distance_from_earth numeric(6,2)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    has_life boolean,
    age_in_milions_of_years integer,
    distance_from_earth numeric(6,2),
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    has_life boolean,
    age_in_milions_of_years integer,
    distance_from_earth numeric(6,2),
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    has_life boolean,
    age_in_milions_of_years integer,
    distance_from_earth numeric(6,2),
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: aditional_table; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.aditional_table VALUES ('1', 1, NULL);
INSERT INTO public.aditional_table VALUES ('2', 2, NULL);
INSERT INTO public.aditional_table VALUES ('3', 3, NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'a', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'b', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'c', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'd', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'e', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'f', NULL, NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'a', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (2, 'b', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'c', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'd', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'f', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'g', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'h', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'j', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'k', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'l', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (11, '1a', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (12, '1s', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (13, '1c', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (14, '1d', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (15, '1f', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (16, '1g', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (17, '1h', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (18, '1j', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (19, '1k', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'l1', NULL, NULL, NULL, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'a', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (2, 'da', NULL, NULL, NULL, NULL, 4);
INSERT INTO public.planet VALUES (3, 'b', NULL, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (4, 'ab', NULL, NULL, NULL, NULL, 5);
INSERT INTO public.planet VALUES (5, 'c', NULL, NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES (6, 'ca', NULL, NULL, NULL, NULL, 6);
INSERT INTO public.planet VALUES (11, 'qa', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (12, 'aq', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (10, 'qb', NULL, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (9, 'bq', NULL, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (8, 'cq', NULL, NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES (7, 'qc', NULL, NULL, NULL, NULL, 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'aa', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (2, 'bb', NULL, NULL, NULL, NULL, 6);
INSERT INTO public.star VALUES (3, 'cc', NULL, NULL, NULL, NULL, 5);
INSERT INTO public.star VALUES (4, 'dd', NULL, NULL, NULL, NULL, 4);
INSERT INTO public.star VALUES (5, 'ee', NULL, NULL, NULL, NULL, 3);
INSERT INTO public.star VALUES (6, 'ff', NULL, NULL, NULL, NULL, 2);


--
-- Name: aditional_table aditional_table_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.aditional_table
    ADD CONSTRAINT aditional_table_name_key UNIQUE (name);


--
-- Name: aditional_table aditional_table_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.aditional_table
    ADD CONSTRAINT aditional_table_pkey PRIMARY KEY (aditional_table_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

