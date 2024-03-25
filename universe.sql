--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
-- Name: comet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.comet (
    comet_id integer NOT NULL,
    name character varying(100) NOT NULL,
    type text NOT NULL,
    diameter numeric NOT NULL,
    distance_from_sun numeric NOT NULL
);


ALTER TABLE public.comet OWNER TO freecodecamp;

--
-- Name: comet_comet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.comet_comet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comet_comet_id_seq OWNER TO freecodecamp;

--
-- Name: comet_comet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.comet_comet_id_seq OWNED BY public.comet.comet_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    galaxy_name character varying(100) NOT NULL,
    size integer NOT NULL,
    distance_from_earth numeric NOT NULL,
    has_spiral_arms boolean NOT NULL,
    name character varying(100) NOT NULL,
    description text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    moon_name character varying(100) NOT NULL,
    planet_id integer NOT NULL,
    radius numeric NOT NULL,
    is_inhabited boolean NOT NULL,
    age integer NOT NULL,
    name character varying(100) NOT NULL,
    description text
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    planet_name character varying(100) NOT NULL,
    star_id integer NOT NULL,
    mass numeric NOT NULL,
    has_atmosphere boolean NOT NULL,
    temperature integer NOT NULL,
    name character varying(100) NOT NULL,
    description text
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    star_name character varying(100) NOT NULL,
    galaxy_id integer NOT NULL,
    luminosity numeric NOT NULL,
    is_binary boolean NOT NULL,
    distance_from_earth integer NOT NULL,
    name character varying(100) NOT NULL,
    description text
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: comet comet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet ALTER COLUMN comet_id SET DEFAULT nextval('public.comet_comet_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: comet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.comet VALUES (1, 'Halley''s Comet', 'Periodic', 15, 0.586);
INSERT INTO public.comet VALUES (2, 'Hale-Bopp', 'Non-periodic', 60, 2.22);
INSERT INTO public.comet VALUES (3, 'Comet Lovejoy', 'Non-periodic', 3, 0.43);
INSERT INTO public.comet VALUES (4, 'Comet Hyakutake', 'Non-periodic', 3, 0.101);
INSERT INTO public.comet VALUES (5, 'Comet Shoemaker-Levy 9', 'Non-periodic', 4, 0.87);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (3, 'Milky Way', 100000, 100000, true, 'Galaxy 1', NULL);
INSERT INTO public.galaxy VALUES (4, 'Andromeda', 200000, 200000, true, 'Galaxy 2', NULL);
INSERT INTO public.galaxy VALUES (5, 'Triangulum', 300000, 300000, false, 'Galaxy 3', NULL);
INSERT INTO public.galaxy VALUES (6, 'Galaxy 4', 100000, 100000, true, 'Galaxy 4', NULL);
INSERT INTO public.galaxy VALUES (7, 'Galaxy 5', 100000, 100000, true, 'Galaxy 5', NULL);
INSERT INTO public.galaxy VALUES (8, 'Galaxy 6', 100000, 100000, true, 'Galaxy 6', NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (2, 'Luna', 15, 1737.1, false, 5, 'Moon 1', NULL);
INSERT INTO public.moon VALUES (3, 'Phobos', 15, 11.1, false, 4, 'Moon 2', NULL);
INSERT INTO public.moon VALUES (4, 'Ganymede', 15, 2634.1, false, 5, 'Moon 3', NULL);
INSERT INTO public.moon VALUES (5, 'Titan', 15, 2575.5, false, 5, 'Moon 4', NULL);
INSERT INTO public.moon VALUES (6, 'Europa', 15, 1560.8, false, 5, 'Moon 5', NULL);
INSERT INTO public.moon VALUES (7, 'Enceladus', 15, 252.1, false, 5, 'Moon 6', NULL);
INSERT INTO public.moon VALUES (8, 'Miranda', 15, 235.8, false, 4, 'Moon 7', NULL);
INSERT INTO public.moon VALUES (9, 'Triton', 15, 1353.4, false, 5, 'Moon 8', NULL);
INSERT INTO public.moon VALUES (10, 'Charon', 15, 606.0, false, 4, 'Moon 9', NULL);
INSERT INTO public.moon VALUES (11, 'Deimos', 15, 6.2, false, 4, 'Moon 10', NULL);
INSERT INTO public.moon VALUES (12, 'Larissa', 15, 194.0, false, 4, 'Moon 11', NULL);
INSERT INTO public.moon VALUES (13, 'Iapetus', 15, 734.5, false, 5, 'Moon 12', NULL);
INSERT INTO public.moon VALUES (14, 'Dione', 15, 561.7, false, 5, 'Moon 13', NULL);
INSERT INTO public.moon VALUES (15, 'Hyperion', 15, 133.0, false, 4, 'Moon 14', NULL);
INSERT INTO public.moon VALUES (16, 'Oberon', 15, 761.4, false, 5, 'Moon 15', NULL);
INSERT INTO public.moon VALUES (17, 'Rhea', 15, 763.8, false, 4, 'Moon 16', NULL);
INSERT INTO public.moon VALUES (18, 'Mimas', 15, 198.2, false, 4, 'Moon 17', NULL);
INSERT INTO public.moon VALUES (19, 'Nereid', 15, 170.0, false, 5, 'Moon 18', NULL);
INSERT INTO public.moon VALUES (20, 'Proteus', 15, 210.0, false, 4, 'Moon 19', NULL);
INSERT INTO public.moon VALUES (21, 'Titania', 15, 788.9, false, 5, 'Moon 20', NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (14, 'Mercury', 8, 328500000000000000000000, true, 167, 'Planet 1', NULL);
INSERT INTO public.planet VALUES (15, 'Venus', 9, 4867000000000000000000000, true, 464, 'Planet 2', NULL);
INSERT INTO public.planet VALUES (16, 'Mars', 10, 639000000000000000000000, true, -55, 'Planet 3', NULL);
INSERT INTO public.planet VALUES (17, 'Jupiter', 11, 1898000000000000000000000000, true, -145, 'Planet 4', NULL);
INSERT INTO public.planet VALUES (18, 'Saturn', 12, 568300000000000000000000000, true, -178, 'Planet 5', NULL);
INSERT INTO public.planet VALUES (19, 'Uranus', 13, 86810000000000000000000000, true, -216, 'Planet 6', NULL);
INSERT INTO public.planet VALUES (21, 'Xenon', 8, 328500000000000000000000, true, 167, 'Planet 1', NULL);
INSERT INTO public.planet VALUES (22, 'Zephyr', 8, 4867000000000000000000000, true, 464, 'Planet 2', NULL);
INSERT INTO public.planet VALUES (23, 'Nebula', 8, 639000000000000000000000, true, -55, 'Planet 3', NULL);
INSERT INTO public.planet VALUES (24, 'Aurora', 8, 1898000000000000000000000000, true, -145, 'Planet 4', NULL);
INSERT INTO public.planet VALUES (25, 'Quasar', 8, 568300000000000000000000000, true, -178, 'Planet 5', NULL);
INSERT INTO public.planet VALUES (26, 'Galactus', 8, 86810000000000000000000000, true, -216, 'Planet 6', NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (8, 'Sun', 3, 1.0, false, 500, 'Star 1', NULL);
INSERT INTO public.star VALUES (9, 'Proxima Centauri', 4, 0.001, false, 400, 'Star 2', NULL);
INSERT INTO public.star VALUES (10, 'Sirius', 5, 25.4, false, 300, 'Star 3', NULL);
INSERT INTO public.star VALUES (11, 'Star 4', 6, 1.0, false, 500, 'Star 4', NULL);
INSERT INTO public.star VALUES (12, 'Star 5', 7, 1.0, false, 500, 'Star 5', NULL);
INSERT INTO public.star VALUES (13, 'Star 6', 8, 1.0, false, 500, 'Star 6', NULL);


--
-- Name: comet_comet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.comet_comet_id_seq', 5, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 8, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 26, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 13, true);


--
-- Name: comet comet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comet_name_key UNIQUE (name);


--
-- Name: comet comet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comet_pkey PRIMARY KEY (comet_id);


--
-- Name: galaxy galaxy_galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_name_key UNIQUE (galaxy_name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_name_key UNIQUE (moon_name);


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
-- Name: planet planet_planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_name_key UNIQUE (planet_name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_name_key UNIQUE (star_name);


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

