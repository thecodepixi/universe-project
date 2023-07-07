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
-- Name: extra_stuff; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.extra_stuff (
    extra_stuff_id integer NOT NULL,
    things text NOT NULL,
    things2 integer,
    things3 boolean,
    name character varying(10)
);


ALTER TABLE public.extra_stuff OWNER TO freecodecamp;

--
-- Name: extra_stuff_extra_stuff_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.extra_stuff_extra_stuff_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.extra_stuff_extra_stuff_id_seq OWNER TO freecodecamp;

--
-- Name: extra_stuff_extra_stuff_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.extra_stuff_extra_stuff_id_seq OWNED BY public.extra_stuff.extra_stuff_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(20) NOT NULL,
    width_in_lightyears integer,
    description text,
    galaxy_shape character varying(20)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(20) NOT NULL,
    planet_id integer NOT NULL,
    miles_from_planet integer,
    description text
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(20) NOT NULL,
    star_id integer NOT NULL,
    lightyears_from_earth numeric,
    has_life boolean,
    description text,
    visited_by_spacecraft boolean
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(20) NOT NULL,
    galaxy_id integer,
    description text,
    star_type character varying(20)
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: extra_stuff extra_stuff_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.extra_stuff ALTER COLUMN extra_stuff_id SET DEFAULT nextval('public.extra_stuff_extra_stuff_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: extra_stuff; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.extra_stuff VALUES (1, 'thing1', NULL, NULL, NULL);
INSERT INTO public.extra_stuff VALUES (2, 'thing2', NULL, NULL, NULL);
INSERT INTO public.extra_stuff VALUES (3, 'other thing', NULL, NULL, NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (2, 'Andromeda', 220000, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Pinwheel', 170000, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Whirlpool', 60000, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Triangulum', 60000, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Black Eye', 52962, NULL, NULL);
INSERT INTO public.galaxy VALUES (1, 'The Milkyway', 105700, NULL, 'spiral');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'The Moon', 1, 238900, NULL);
INSERT INTO public.moon VALUES (4, 'Io', 5, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'Europa', 5, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'Ganymede', 5, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'Callisto', 5, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'Metis', 5, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'Adrastea', 5, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'Amalthea', 5, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'Thebe', 5, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'Themisto', 5, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'Leda', 5, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'Ersa', 5, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'Himalia', 5, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'Pandia', 5, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'Elara', 5, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'Dia', 5, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'Enceladus', 6, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'Titan', 6, NULL, NULL);
INSERT INTO public.moon VALUES (21, 'Mimas', 6, NULL, NULL);
INSERT INTO public.moon VALUES (22, 'Hyperion', 6, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 1, NULL, true, NULL, NULL);
INSERT INTO public.planet VALUES (2, 'Mercury', 1, NULL, false, NULL, NULL);
INSERT INTO public.planet VALUES (3, 'Mars', 1, NULL, false, NULL, NULL);
INSERT INTO public.planet VALUES (4, 'Venus', 1, NULL, false, NULL, NULL);
INSERT INTO public.planet VALUES (5, 'Jupiter', 1, NULL, false, NULL, NULL);
INSERT INTO public.planet VALUES (6, 'Saturn', 1, NULL, false, NULL, NULL);
INSERT INTO public.planet VALUES (7, 'Neptune', 1, NULL, false, NULL, NULL);
INSERT INTO public.planet VALUES (8, 'Uranus', 1, NULL, false, NULL, NULL);
INSERT INTO public.planet VALUES (9, 'Pluto', 1, NULL, false, NULL, NULL);
INSERT INTO public.planet VALUES (10, 'Planet b', 10, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (11, 'Planet c', 10, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (12, 'Planet d', 10, NULL, NULL, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (4, 'Sirius', 1, NULL, NULL);
INSERT INTO public.star VALUES (5, 'Betelgeuse', 1, NULL, NULL);
INSERT INTO public.star VALUES (6, 'Rigel', 1, NULL, NULL);
INSERT INTO public.star VALUES (7, 'Altair', 1, NULL, NULL);
INSERT INTO public.star VALUES (8, 'Vega', 1, NULL, NULL);
INSERT INTO public.star VALUES (9, 'Polaris', 1, NULL, NULL);
INSERT INTO public.star VALUES (1, 'The Sun', 1, NULL, NULL);
INSERT INTO public.star VALUES (10, 'Proxima Centauri', NULL, NULL, NULL);


--
-- Name: extra_stuff_extra_stuff_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.extra_stuff_extra_stuff_id_seq', 3, true);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 6, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 22, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 12, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 10, true);


--
-- Name: extra_stuff extra_stuff_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.extra_stuff
    ADD CONSTRAINT extra_stuff_pkey PRIMARY KEY (extra_stuff_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy unique_galaxy_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_galaxy_name UNIQUE (name);


--
-- Name: moon unique_moon_planet_pair; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon_planet_pair UNIQUE (name, planet_id);


--
-- Name: star unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_name UNIQUE (name);


--
-- Name: planet unique_star_planet_pair; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_star_planet_pair UNIQUE (star_id, name);


--
-- Name: extra_stuff unique_things; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.extra_stuff
    ADD CONSTRAINT unique_things UNIQUE (things);


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

