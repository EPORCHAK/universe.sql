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
    galaxy_id integer NOT NULL,
    speed integer,
    description text,
    name character varying(200),
    age integer DEFAULT 100 NOT NULL,
    sound character varying(200)
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
    name character varying(200) NOT NULL,
    water_present boolean NOT NULL,
    planet_id integer NOT NULL,
    name_code character varying(200) NOT NULL
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
    name character varying(200) NOT NULL,
    population_size numeric,
    time_travel boolean DEFAULT false NOT NULL,
    star_id integer NOT NULL,
    sound character varying(200)
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
-- Name: shootingstar; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.shootingstar (
    shootingstar_id integer NOT NULL,
    gravity integer,
    name character varying(200) NOT NULL,
    colors character varying(200) NOT NULL,
    sound character varying(200)
);


ALTER TABLE public.shootingstar OWNER TO freecodecamp;

--
-- Name: shootingstar_shootingstar_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.shootingstar_shootingstar_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.shootingstar_shootingstar_id_seq OWNER TO freecodecamp;

--
-- Name: shootingstar_shootingstar_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.shootingstar_shootingstar_id_seq OWNED BY public.shootingstar.shootingstar_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    radius integer NOT NULL,
    color character varying(200),
    name character varying(200) NOT NULL,
    galaxy_id integer,
    sound character varying(200)
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
-- Name: shootingstar shootingstar_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.shootingstar ALTER COLUMN shootingstar_id SET DEFAULT nextval('public.shootingstar_shootingstar_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, NULL, NULL, 'milky', 100, NULL);
INSERT INTO public.galaxy VALUES (2, NULL, NULL, 'way', 100, NULL);
INSERT INTO public.galaxy VALUES (3, NULL, NULL, 'milton', 100, NULL);
INSERT INTO public.galaxy VALUES (4, NULL, NULL, 'max', 100, NULL);
INSERT INTO public.galaxy VALUES (5, NULL, NULL, 'flower', 100, NULL);
INSERT INTO public.galaxy VALUES (6, NULL, NULL, 'doop', 100, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'one', true, 2, 'one');
INSERT INTO public.moon VALUES (2, 'three', true, 3, 'three');
INSERT INTO public.moon VALUES (3, 'four', false, 3, 'four');
INSERT INTO public.moon VALUES (4, 'five', false, 3, 'five');
INSERT INTO public.moon VALUES (5, 'six', true, 4, 'six');
INSERT INTO public.moon VALUES (6, 'seven', true, 3, 'seven');
INSERT INTO public.moon VALUES (7, 'eight', true, 3, 'eight');
INSERT INTO public.moon VALUES (8, 'nine', true, 3, 'nine');
INSERT INTO public.moon VALUES (9, 'ten', true, 2, 'ten');
INSERT INTO public.moon VALUES (10, 'eleven', true, 2, 'eleven');
INSERT INTO public.moon VALUES (11, 'twelve', false, 1, 'twelve');
INSERT INTO public.moon VALUES (12, 'thirteen', true, 3, 'thirteen');
INSERT INTO public.moon VALUES (13, 'fourteen', true, 2, 'fourteen');
INSERT INTO public.moon VALUES (14, 'fifteen', true, 3, 'fifteen');
INSERT INTO public.moon VALUES (15, 'sixteen', true, 2, 'sixteen');
INSERT INTO public.moon VALUES (16, 'seventeen', true, 2, 'seventeen');
INSERT INTO public.moon VALUES (17, 'eighteen', true, 2, 'eighteen');
INSERT INTO public.moon VALUES (18, 'nineteen', true, 2, 'nineteen');
INSERT INTO public.moon VALUES (19, 'twenty', false, 2, 'twenty');
INSERT INTO public.moon VALUES (20, 'two', true, 2, 'true');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'earth', NULL, false, 1, NULL);
INSERT INTO public.planet VALUES (2, 'mars', NULL, false, 1, NULL);
INSERT INTO public.planet VALUES (3, 'neptune', NULL, false, 1, NULL);
INSERT INTO public.planet VALUES (4, 'jupiter', NULL, false, 1, NULL);
INSERT INTO public.planet VALUES (5, 'uranus', NULL, false, 1, NULL);
INSERT INTO public.planet VALUES (6, 'venus', NULL, false, 1, NULL);
INSERT INTO public.planet VALUES (7, 'mercury', NULL, false, 1, NULL);
INSERT INTO public.planet VALUES (8, 'saturn', NULL, false, 1, NULL);
INSERT INTO public.planet VALUES (9, 'pluto', NULL, false, 2, NULL);
INSERT INTO public.planet VALUES (10, 'alienoid', NULL, false, 2, NULL);
INSERT INTO public.planet VALUES (11, 'dowl', NULL, false, 2, NULL);
INSERT INTO public.planet VALUES (12, 'manic', NULL, false, 3, NULL);
INSERT INTO public.planet VALUES (13, 'bow', NULL, false, 2, NULL);


--
-- Data for Name: shootingstar; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.shootingstar VALUES (1, NULL, 'magic', 'blue', NULL);
INSERT INTO public.shootingstar VALUES (2, NULL, 'power', 'green', NULL);
INSERT INTO public.shootingstar VALUES (3, NULL, 'flute', 'orange', NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 223, 'red', 'rose', 1, NULL);
INSERT INTO public.star VALUES (2, 333, 'yellow', 'flow', 1, NULL);
INSERT INTO public.star VALUES (3, 433, 'purple', 'maddam', 1, NULL);
INSERT INTO public.star VALUES (4, 553, 'pink', 'daisy', 2, NULL);
INSERT INTO public.star VALUES (5, 663, 'green', 'spar', 2, NULL);
INSERT INTO public.star VALUES (6, 773, 'orange', 'dot', 1, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: shootingstar_shootingstar_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.shootingstar_shootingstar_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_sound_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_sound_key UNIQUE (sound);


--
-- Name: moon moon_name_code_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_code_key UNIQUE (name_code);


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
-- Name: planet planet_sound_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_sound_key UNIQUE (sound);


--
-- Name: shootingstar shootingstar_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.shootingstar
    ADD CONSTRAINT shootingstar_pkey PRIMARY KEY (shootingstar_id);


--
-- Name: shootingstar shootingstar_sound_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.shootingstar
    ADD CONSTRAINT shootingstar_sound_key UNIQUE (sound);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_sound_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_sound_key UNIQUE (sound);


--
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--
