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
-- Name: common; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.common (
    common_id integer NOT NULL,
    name character varying(30),
    founder character varying(30),
    year_found integer DEFAULT 0 NOT NULL,
    angular_size integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.common OWNER TO freecodecamp;

--
-- Name: common_common_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.common_common_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.common_common_id_seq OWNER TO freecodecamp;

--
-- Name: common_common_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.common_common_id_seq OWNED BY public.common.common_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40),
    description text,
    telescope_used character varying(60),
    galaxy_type character varying(60),
    distance_from_earth character varying(80),
    age_in_millions_of_years integer,
    found_year integer DEFAULT 0 NOT NULL,
    radius_in_lightyears integer DEFAULT 0 NOT NULL,
    constellation character varying(30)
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
    parent_planet character varying(60),
    name character varying(30),
    radius_in_km integer DEFAULT 0 NOT NULL,
    discovery_year integer DEFAULT 0 NOT NULL
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
    name character varying(40),
    description text,
    radius_in_km numeric(10,2),
    has_life boolean,
    is_spherical boolean,
    no_of_moons integer DEFAULT 0 NOT NULL,
    rotation_time_period integer DEFAULT 0 NOT NULL,
    atmosphere_composition character varying(80)
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
    name character varying(40),
    description text,
    rank integer DEFAULT 0 NOT NULL,
    distance_in_lightyear integer DEFAULT 0 NOT NULL
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
-- Name: common common_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.common ALTER COLUMN common_id SET DEFAULT nextval('public.common_common_id_seq'::regclass);


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
-- Data for Name: common; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.common VALUES (1, 'Phobos', 'Hall', 1877, 12);
INSERT INTO public.common VALUES (2, 'Europa', 'Galileo', 1610, 18);
INSERT INTO public.common VALUES (3, 'Amalthea', 'Barnard', 1892, 5);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (2, 'Andromeda Galaxy', 'The Andromeda Galaxy or Andromeda Nebula is a barred spiral galaxy, which is named after the princess who was the wife of Perseus', 'Hubble Space', 'Spiral', '2.537 million light-years', 10010, 1612, 110000, 'Andromeda');
INSERT INTO public.galaxy VALUES (3, 'Hoags Object', 'This is an unusual ring galaxy in the constellation of Serpens Caput', 'Hubble Space', 'Ring', '612.8 million light-years', 12750, 1950, 60500, 'Serpens Caput');
INSERT INTO public.galaxy VALUES (4, 'Whirlpool', 'The whirlpool galaxy is an interacting grand-design spiral galaxy', 'Hubbles Advanced Camera', 'Spiral', '23.16 million light-years', 400, 1773, 30000, 'Canes Venatici');
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 'The Sombrero galaxy is a peculiar galaxy of unclear classification', 'Hubbles Advanced Camera', 'Spiral', '29.35 million light-years', 13250, 1781, 25000, 'Virgo');
INSERT INTO public.galaxy VALUES (6, 'Black Eye', 'This is a relatively isolated spiral galaxy in the mildly northern constellation', 'NASA/ESA Hubble Space', 'Spiral', '17 million light-years', 13280, 1779, 26481, 'Coma Berenices');
INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'The Milky Way is a barred spiral galaxy that includes our Solar System', 'Hubble, Chandra and Spitzer', 'Spiral', '25 thousand light-years', 13610, 1610, 52850, 'Sagittarius');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Earth', 'Moon', 1738, 0);
INSERT INTO public.moon VALUES (2, 'Mars', 'Phobos', 1126, 0);
INSERT INTO public.moon VALUES (3, 'Jupiter', 'Europa', 1560, 0);
INSERT INTO public.moon VALUES (4, 'Saturn', 'Titan', 2575, 0);
INSERT INTO public.moon VALUES (5, 'Uranus', 'Miranda', 236, 0);
INSERT INTO public.moon VALUES (6, 'Neptune', 'Despina', 84, 0);
INSERT INTO public.moon VALUES (7, 'Pluto', 'Charon', 606, 0);
INSERT INTO public.moon VALUES (8, 'Orcus', 'Vanth', 226, 0);
INSERT INTO public.moon VALUES (9, 'Salacia', 'Actaea', 148, 0);
INSERT INTO public.moon VALUES (10, 'Haumea', 'Namaka', 86, 0);
INSERT INTO public.moon VALUES (11, 'Quaoar', 'Weywot', 40, 0);
INSERT INTO public.moon VALUES (12, 'Varda', 'Ilmare', 180, 0);
INSERT INTO public.moon VALUES (13, 'Gonggong', 'Xiangliu', 420, 0);
INSERT INTO public.moon VALUES (14, 'Eris', 'Dysnomia', 120, 0);
INSERT INTO public.moon VALUES (15, 'Menasu', 'Ganymede', 2634, 0);
INSERT INTO public.moon VALUES (16, 'Stalle', 'Callisto', 2410, 0);
INSERT INTO public.moon VALUES (17, 'Ventangu', 'Elara', 45, 0);
INSERT INTO public.moon VALUES (18, 'Thangadam', 'Metis', 28, 0);
INSERT INTO public.moon VALUES (19, 'Gijiran', 'Thyone', 25, 0);
INSERT INTO public.moon VALUES (20, 'Randiora', 'Carpo', 69, 0);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 'Mercury is the smallest planet in the Solar System and the closest to the Sun', 2439.70, false, true, 0, 59, 'Oxygen, Sodium and Hydrogen');
INSERT INTO public.planet VALUES (2, 'Venus', 'Venus is the second planet from the Sun. It is sometimes called as sister or twin planet of Earth', 6051.80, false, true, 0, 117, 'Carbon dioxide and thich clouds of sulfuric acid');
INSERT INTO public.planet VALUES (3, 'Earth', 'Earth is the third planet from the Sun and the only astronomical object known to harbor life', 6371.00, true, true, 1, 1, 'Nitrogen and Oxygen');
INSERT INTO public.planet VALUES (4, 'Mars', 'Mars is the fourth planet from the Sun and the second-smallest planet in the Solar System, being larger than only Mercury', 3389.50, false, true, 2, 1, 'Carbon dioxide, Molecular nitrogen and argon');
INSERT INTO public.planet VALUES (5, 'Jupiter', 'Jupiter is the fifth planet from the Sun and the largest in the Solar System, named after Roman god Jupiter', 69911.00, false, true, 80, 1, 'Hydrogen, helium, methhane and ammonia');
INSERT INTO public.planet VALUES (6, 'Saturn', 'Saturn is the sixth planet from the Sun and the second-largest in the Solar System, after Jupiter', 58232.00, false, true, 83, 1, 'Hydrogen and helium');
INSERT INTO public.planet VALUES (7, 'Uranus', 'Uranus is the seventh planet from the Sun, has the third-largest planetary radius and fourth-largest planetary mass', 25362.00, false, true, 27, 1, 'Hydrogen, helium and methane');
INSERT INTO public.planet VALUES (8, 'Neptune', 'Neptune is the eighth planet from the Sun and the farthest known solar planet', 24622.00, false, true, 14, 1, 'Hydrogen');
INSERT INTO public.planet VALUES (9, 'Pluto', 'Pluto is a dwarf planet in the Kuiper belt, a ring of bodies beyond the orbit of Neptune', 1188.30, false, true, 5, 6, 'Nitrogen, methane and carbon monoxide');
INSERT INTO public.planet VALUES (10, 'Gaia-1b', 'Gaia-1b is an exoplanet orbiting the star Gaia-1', 85920.62, false, true, 0, 3, 'Nitrogen and carbon dioxide');
INSERT INTO public.planet VALUES (11, 'Gaia-2b', 'Gaia-2b is a gas giant exoplanet that orbits a G-type star', 92422.34, false, true, 0, 4, 'Nitrogen, argon and carbon dioxide');
INSERT INTO public.planet VALUES (12, 'KOI-7368 b', 'KOI-7368 b is a Neptune-like exoplanet that orbits a K-type star', 14143.62, false, true, 0, 7, 'Rich Sodium');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'The Sun is the star at the center of the Solar System', 0, 0);
INSERT INTO public.star VALUES (2, 'Sirius', 'Sirius is the brightest star in the night sky.', 1, 9);
INSERT INTO public.star VALUES (3, 'Canopus', 'Canopus is the brightest star in the southern constellation of Carina and the second-brightest star in the night sky', 2, 310);
INSERT INTO public.star VALUES (4, 'Rigil Kentaurus', 'Rigil Kentaurus is a triple star system in the constellation of Centaurus', 3, 4);
INSERT INTO public.star VALUES (5, 'Arcturus', 'Arcturus is the brightest star in the northern constellation of Boötes', 4, 37);
INSERT INTO public.star VALUES (6, 'Vega', 'Vega is the brightest star in the northern constellation of Lyra', 5, 25);


--
-- Name: common_common_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.common_common_id_seq', 3, true);


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

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: common common_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.common
    ADD CONSTRAINT common_name_key UNIQUE (name);


--
-- Name: common common_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.common
    ADD CONSTRAINT common_pkey PRIMARY KEY (common_id);


--
-- Name: galaxy galaxy_constellation_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_constellation_key UNIQUE (constellation);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_parent_planet_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_parent_planet_key UNIQUE (parent_planet);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_atmosphere_composition_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_atmosphere_composition_key UNIQUE (atmosphere_composition);


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
-- Name: galaxy fk_star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT fk_star_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--
