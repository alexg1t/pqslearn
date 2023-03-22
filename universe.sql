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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying(30) NOT NULL,
    galaxy_id integer NOT NULL,
    weight numeric(3,1),
    has_life boolean,
    is_spherical boolean,
    nick text,
    age integer,
    "position" integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: met; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.met (
    name character varying(30) NOT NULL,
    met_id integer NOT NULL,
    weight numeric(3,1),
    has_life boolean,
    is_spherical boolean,
    nick text,
    age integer,
    "position" integer
);


ALTER TABLE public.met OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    name character varying(30) NOT NULL,
    moon_id integer NOT NULL,
    weight numeric(3,1),
    has_life boolean,
    is_spherical boolean,
    nick text,
    age integer,
    "position" integer,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    name character varying(30) NOT NULL,
    planet_id integer NOT NULL,
    weight numeric(3,1),
    has_life boolean,
    is_spherical boolean,
    nick text,
    age integer,
    "position" integer,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying(30) NOT NULL,
    star_id integer NOT NULL,
    weight numeric(3,1),
    has_life boolean,
    is_spherical boolean,
    nick text,
    age integer,
    "position" integer,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('galaxy1', 1, 23.0, true, true, 'anal', 12, 1);
INSERT INTO public.galaxy VALUES ('galaxy2', 2, 22.0, true, true, 'anal2', 22, 2);
INSERT INTO public.galaxy VALUES ('galaxy3', 3, 23.0, true, true, 'anal3', 22, 3);
INSERT INTO public.galaxy VALUES ('galaxy4', 4, 24.0, true, true, 'anal4', 24, 4);
INSERT INTO public.galaxy VALUES ('galaxy5', 5, 25.0, true, true, 'anal5', 25, 5);
INSERT INTO public.galaxy VALUES ('galaxy6', 6, 26.0, true, true, 'anal6', 26, 6);


--
-- Data for Name: met; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.met VALUES ('m20', 120, 52.0, true, true, 'moon2', 22, 2);
INSERT INTO public.met VALUES ('m220', 2120, 52.0, true, true, 'moon2', 22, 2);
INSERT INTO public.met VALUES ('m2220', 2220, 52.0, true, true, 'moon2', 22, 2);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('mp1', 1, 52.0, true, true, 'moon1', 22, 2, 2);
INSERT INTO public.moon VALUES ('mp2', 2, 52.0, true, true, 'moon2', 22, 2, 2);
INSERT INTO public.moon VALUES ('mp3', 3, 52.0, true, true, 'moon2', 22, 2, 2);
INSERT INTO public.moon VALUES ('mp4', 4, 52.0, true, true, 'moon2', 22, 2, 2);
INSERT INTO public.moon VALUES ('mp5', 5, 52.0, true, true, 'moon2', 22, 2, 2);
INSERT INTO public.moon VALUES ('mp6', 6, 52.0, true, true, 'moon2', 22, 2, 2);
INSERT INTO public.moon VALUES ('mp7', 7, 52.0, true, true, 'moon2', 22, 2, 2);
INSERT INTO public.moon VALUES ('mp8', 8, 52.0, true, true, 'moon2', 22, 2, 2);
INSERT INTO public.moon VALUES ('m9', 9, 52.0, true, true, 'moon2', 22, 2, 2);
INSERT INTO public.moon VALUES ('m10', 10, 52.0, true, true, 'moon2', 22, 2, 2);
INSERT INTO public.moon VALUES ('m11', 11, 52.0, true, true, 'moon2', 22, 2, 2);
INSERT INTO public.moon VALUES ('m12', 12, 52.0, true, true, 'moon2', 22, 2, 2);
INSERT INTO public.moon VALUES ('m13', 13, 52.0, true, true, 'moon2', 22, 2, 2);
INSERT INTO public.moon VALUES ('m14', 14, 52.0, true, true, 'moon2', 22, 2, 2);
INSERT INTO public.moon VALUES ('m15', 15, 52.0, true, true, 'moon2', 22, 2, 2);
INSERT INTO public.moon VALUES ('m16', 16, 52.0, true, true, 'moon2', 22, 2, 2);
INSERT INTO public.moon VALUES ('m17', 17, 52.0, true, true, 'moon2', 22, 2, 2);
INSERT INTO public.moon VALUES ('m18', 18, 52.0, true, true, 'moon2', 22, 2, 2);
INSERT INTO public.moon VALUES ('m19', 19, 52.0, true, true, 'moon2', 22, 2, 2);
INSERT INTO public.moon VALUES ('m20', 120, 52.0, true, true, 'moon2', 22, 2, 2);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('splanet1', 1, 56.0, true, true, 'stapl1', 21, 1, 1);
INSERT INTO public.planet VALUES ('splanet2', 2, 52.0, true, true, 'stapl2', 22, 2, 2);
INSERT INTO public.planet VALUES ('splanet3', 3, 52.0, true, true, 'stapl3', 22, 2, 2);
INSERT INTO public.planet VALUES ('splanet4', 4, 52.0, true, true, 'stapl3', 22, 2, 2);
INSERT INTO public.planet VALUES ('splanet5', 5, 52.0, true, true, 'stapl3', 22, 2, 2);
INSERT INTO public.planet VALUES ('splanet6', 6, 52.0, true, true, 'stapl3', 22, 2, 2);
INSERT INTO public.planet VALUES ('splanet7', 7, 52.0, true, true, 'stapl3', 22, 2, 2);
INSERT INTO public.planet VALUES ('splanet8', 8, 52.0, true, true, 'stapl3', 22, 2, 2);
INSERT INTO public.planet VALUES ('splanet9', 9, 52.0, true, true, 'stapl3', 22, 2, 2);
INSERT INTO public.planet VALUES ('splanet10', 10, 52.0, true, true, 'stapl3', 22, 2, 2);
INSERT INTO public.planet VALUES ('splanet11', 11, 52.0, true, true, 'stapl3', 22, 2, 2);
INSERT INTO public.planet VALUES ('splanet12', 12, 52.0, true, true, 'stapl3', 22, 2, 2);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('star1', 1, 21.0, true, true, 'star1', 21, 1, 1);
INSERT INTO public.star VALUES ('star2', 2, 22.0, true, true, 'star2', 21, 2, 2);
INSERT INTO public.star VALUES ('star3', 3, 33.0, true, true, 'star3', 23, 3, 3);
INSERT INTO public.star VALUES ('star4', 4, 34.0, true, true, 'star4', 24, 4, 4);
INSERT INTO public.star VALUES ('star5', 5, 55.0, true, true, 'star5', 25, 5, 5);
INSERT INTO public.star VALUES ('star6', 6, 56.0, true, true, 'star6', 26, 6, 6);


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
-- Name: met met_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.met
    ADD CONSTRAINT met_name_key UNIQUE (name);


--
-- Name: met met_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.met
    ADD CONSTRAINT met_pkey PRIMARY KEY (met_id);


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
