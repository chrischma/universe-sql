--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
-- Name: continents; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.continents (
    continents_id integer NOT NULL,
    name character varying(50),
    leader text,
    color text,
    smell text,
    "exists" boolean DEFAULT true NOT NULL,
    created boolean DEFAULT true NOT NULL
);


ALTER TABLE public.continents OWNER TO freecodecamp;

--
-- Name: continents_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.continents_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.continents_id_seq OWNER TO freecodecamp;

--
-- Name: continents_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.continents_id_seq OWNED BY public.continents.continents_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50),
    size integer,
    weight integer,
    scientific_number numeric,
    includes_humans boolean,
    includes_dogs boolean,
    "exists" boolean DEFAULT true NOT NULL,
    created boolean DEFAULT true NOT NULL
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
    name character varying(50),
    planet_id integer,
    smell text,
    color text,
    "exists" boolean DEFAULT true NOT NULL,
    created boolean DEFAULT true NOT NULL
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
    name character varying(50),
    star_id integer,
    smell text,
    color text,
    "exists" boolean DEFAULT true NOT NULL,
    created boolean DEFAULT true NOT NULL
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
    name character varying(50),
    galaxy_id integer,
    color text,
    smell text,
    "exists" boolean DEFAULT true NOT NULL,
    created boolean DEFAULT true NOT NULL
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
-- Name: continents continents_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.continents ALTER COLUMN continents_id SET DEFAULT nextval('public.continents_id_seq'::regclass);


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
-- Data for Name: continents; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.continents VALUES (1, 'europa', NULL, NULL, NULL, true, true);
INSERT INTO public.continents VALUES (2, 'afrika', NULL, NULL, NULL, true, true);
INSERT INTO public.continents VALUES (3, 'australien', NULL, NULL, NULL, true, true);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'milchstrasse', NULL, NULL, NULL, NULL, NULL, true, true);
INSERT INTO public.galaxy VALUES (2, 'kaesestrasse', NULL, NULL, NULL, NULL, NULL, true, true);
INSERT INTO public.galaxy VALUES (3, 'puddingstrasse', NULL, NULL, NULL, NULL, NULL, true, true);
INSERT INTO public.galaxy VALUES (4, 'wurststrasse', NULL, NULL, NULL, NULL, NULL, true, true);
INSERT INTO public.galaxy VALUES (5, 'krautstrasse', NULL, NULL, NULL, NULL, NULL, true, true);
INSERT INTO public.galaxy VALUES (6, 'kuchenstrasse', NULL, NULL, NULL, NULL, NULL, true, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'mond', 1, NULL, NULL, true, true);
INSERT INTO public.moon VALUES (2, 'moon_2', 1, NULL, NULL, true, true);
INSERT INTO public.moon VALUES (3, 'moon_3', 1, NULL, NULL, true, true);
INSERT INTO public.moon VALUES (4, 'moon_4', 1, NULL, NULL, true, true);
INSERT INTO public.moon VALUES (5, 'moon_5', 1, NULL, NULL, true, true);
INSERT INTO public.moon VALUES (6, 'moon_6', 1, NULL, NULL, true, true);
INSERT INTO public.moon VALUES (7, 'moon_7', 1, NULL, NULL, true, true);
INSERT INTO public.moon VALUES (8, 'moon_8', 1, NULL, NULL, true, true);
INSERT INTO public.moon VALUES (9, 'moon_9', 1, NULL, NULL, true, true);
INSERT INTO public.moon VALUES (10, 'moon_10', 1, NULL, NULL, true, true);
INSERT INTO public.moon VALUES (11, 'moon_11', 1, NULL, NULL, true, true);
INSERT INTO public.moon VALUES (12, 'moon_12', 1, NULL, NULL, true, true);
INSERT INTO public.moon VALUES (13, 'moon_13', 1, NULL, NULL, true, true);
INSERT INTO public.moon VALUES (14, 'moon_14', 1, NULL, NULL, true, true);
INSERT INTO public.moon VALUES (15, 'moon_15', 1, NULL, NULL, true, true);
INSERT INTO public.moon VALUES (16, 'moon_16', 1, NULL, NULL, true, true);
INSERT INTO public.moon VALUES (17, 'moon_17', 1, NULL, NULL, true, true);
INSERT INTO public.moon VALUES (18, 'moon_18', 1, NULL, NULL, true, true);
INSERT INTO public.moon VALUES (19, 'moon_19', 1, NULL, NULL, true, true);
INSERT INTO public.moon VALUES (20, 'moon_20', 1, NULL, NULL, true, true);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (2, 'venus', 1, NULL, NULL, true, true);
INSERT INTO public.planet VALUES (1, 'erde', 1, NULL, NULL, true, true);
INSERT INTO public.planet VALUES (3, 'mars', 1, NULL, NULL, true, true);
INSERT INTO public.planet VALUES (4, 'jupiter', 1, NULL, NULL, true, true);
INSERT INTO public.planet VALUES (5, 'planet_5', 1, NULL, NULL, true, true);
INSERT INTO public.planet VALUES (6, 'planet_6', 1, NULL, NULL, true, true);
INSERT INTO public.planet VALUES (7, 'planet_7', 1, NULL, NULL, true, true);
INSERT INTO public.planet VALUES (8, 'planet_8', 1, NULL, NULL, true, true);
INSERT INTO public.planet VALUES (9, 'planet_9', 1, NULL, NULL, true, true);
INSERT INTO public.planet VALUES (10, 'planet_10', 1, NULL, NULL, true, true);
INSERT INTO public.planet VALUES (11, 'planet_11', 1, NULL, NULL, true, true);
INSERT INTO public.planet VALUES (12, 'planet_12', 1, NULL, NULL, true, true);
INSERT INTO public.planet VALUES (13, 'planet_13', 1, NULL, NULL, true, true);
INSERT INTO public.planet VALUES (14, 'planet_14', 1, NULL, NULL, true, true);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'sun', 1, NULL, NULL, true, true);
INSERT INTO public.star VALUES (2, 'sirius', 1, NULL, NULL, true, true);
INSERT INTO public.star VALUES (3, 'canopus', 1, NULL, NULL, true, true);
INSERT INTO public.star VALUES (4, 'wega', 1, NULL, NULL, true, true);
INSERT INTO public.star VALUES (5, 'rigel', 1, NULL, NULL, true, true);
INSERT INTO public.star VALUES (6, 'proxima', 1, NULL, NULL, true, true);


--
-- Name: continents_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.continents_id_seq', 1, false);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 1, false);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 1, false);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 1, false);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 1, false);


--
-- Name: continents continents_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.continents
    ADD CONSTRAINT continents_name_key UNIQUE (name);


--
-- Name: continents continents_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.continents
    ADD CONSTRAINT continents_pkey PRIMARY KEY (continents_id);


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
-- Name: galaxy name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT name UNIQUE (name);


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
-- Name: galaxy unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_name UNIQUE (name);


--
-- Name: star related_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT related_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon related_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT related_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet related_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT related_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

