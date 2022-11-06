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
-- Name: extra_table; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.extra_table (
    extra_table_id integer NOT NULL,
    name character varying NOT NULL,
    int_1 integer NOT NULL,
    int_2 integer,
    text_field text,
    boolean_field_1 boolean,
    boolean_field_2 boolean,
    numaric_4_2 numeric(4,2),
    moon_id integer
);


ALTER TABLE public.extra_table OWNER TO freecodecamp;

--
-- Name: extra_table_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.extra_table_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.extra_table_id_seq OWNER TO freecodecamp;

--
-- Name: extra_table_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.extra_table_id_seq OWNED BY public.extra_table.extra_table_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying NOT NULL,
    int_1 integer NOT NULL,
    int_2 integer,
    numaric_4_2 numeric(4,2),
    text_field text,
    boolean_field_1 boolean,
    boolean_field_2 boolean
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
    name character varying NOT NULL,
    int_1 integer NOT NULL,
    int_2 integer,
    numaric_4_2 numeric(4,2),
    text_field text,
    boolean_field_1 boolean,
    boolean_field_2 boolean,
    planet_id integer
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
    name character varying NOT NULL,
    int_1 integer NOT NULL,
    int_2 integer,
    numaric_4_2 numeric(4,2),
    text_field text,
    boolean_field_1 boolean,
    boolean_field_2 boolean,
    star_id integer
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
    name character varying NOT NULL,
    int_1 integer NOT NULL,
    int_2 integer,
    numaric_4_2 numeric(4,2),
    text_field text,
    boolean_field_1 boolean,
    boolean_field_2 boolean,
    galaxy_id integer
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
-- Name: extra_table extra_table_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.extra_table ALTER COLUMN extra_table_id SET DEFAULT nextval('public.extra_table_id_seq'::regclass);


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
-- Data for Name: extra_table; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.extra_table VALUES (1, 'extra 1', 10, 20, 'i am from extra 1', true, true, 30.25, 1);
INSERT INTO public.extra_table VALUES (2, 'extra 2', 10, 20, 'i am from extra 2', true, true, 30.25, 2);
INSERT INTO public.extra_table VALUES (3, 'extra 3', 10, 20, 'i am from extra 3', true, true, 30.25, 3);
INSERT INTO public.extra_table VALUES (4, 'extra 4', 10, 20, 'i am from extra 4', true, true, 30.25, 4);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'galaxy 1', 10, 20, 30.25, 'i am galaxy 1', true, true);
INSERT INTO public.galaxy VALUES (2, 'galaxy 2', 20, 30, 40.25, 'i am galaxy 2', true, true);
INSERT INTO public.galaxy VALUES (3, 'galaxy 3', 30, 40, 50.50, 'i am galaxy 3', true, true);
INSERT INTO public.galaxy VALUES (4, 'galaxy 4', 40, 50, 60.50, 'i am galaxy 4', true, true);
INSERT INTO public.galaxy VALUES (5, 'galaxy 5', 40, 50, 60.50, 'i am galaxy 5', true, true);
INSERT INTO public.galaxy VALUES (6, 'galaxy 6', 40, 50, 60.50, 'i am galaxy 6', true, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon 1', 10, 20, 30.25, 'i am moon 1', true, true, 1);
INSERT INTO public.moon VALUES (2, 'moon 2', 10, 20, 30.25, 'i am moon 2', true, true, 1);
INSERT INTO public.moon VALUES (3, 'moon 3', 10, 20, 30.25, 'i am moon 3', true, true, 1);
INSERT INTO public.moon VALUES (4, 'moon 4', 10, 20, 30.25, 'i am moon 4', true, true, 1);
INSERT INTO public.moon VALUES (5, 'moon 5', 10, 20, 30.25, 'i am moon 5', true, true, 2);
INSERT INTO public.moon VALUES (6, 'moon 6', 10, 20, 30.25, 'i am moon 6', true, true, 2);
INSERT INTO public.moon VALUES (7, 'moon 7', 10, 20, 30.25, 'i am moon 7', true, true, 2);
INSERT INTO public.moon VALUES (8, 'moon 8', 10, 20, 30.25, 'i am moon 8', true, true, 2);
INSERT INTO public.moon VALUES (9, 'moon 9', 10, 20, 30.25, 'i am moon 9', true, true, 3);
INSERT INTO public.moon VALUES (10, 'moon 10', 10, 20, 30.25, 'i am moon 10', true, true, 3);
INSERT INTO public.moon VALUES (11, 'moon 11', 10, 20, 30.25, 'i am moon 11', true, true, 3);
INSERT INTO public.moon VALUES (12, 'moon 12', 10, 20, 30.25, 'i am moon 12', true, true, 4);
INSERT INTO public.moon VALUES (13, 'moon 13', 10, 20, 30.25, 'i am moon 13', true, true, 4);
INSERT INTO public.moon VALUES (14, 'moon 14', 10, 20, 30.25, 'i am moon 14', true, true, 4);
INSERT INTO public.moon VALUES (15, 'moon 15', 10, 20, 30.25, 'i am moon 15', true, true, 5);
INSERT INTO public.moon VALUES (16, 'moon 16', 10, 20, 30.25, 'i am moon 16', true, true, 5);
INSERT INTO public.moon VALUES (17, 'moon 17', 10, 20, 30.25, 'i am moon 17', true, true, 5);
INSERT INTO public.moon VALUES (18, 'moon 18', 10, 20, 30.25, 'i am moon 18', true, true, 6);
INSERT INTO public.moon VALUES (19, 'moon 19', 10, 20, 30.25, 'i am moon 19', true, true, 6);
INSERT INTO public.moon VALUES (20, 'moon 20', 10, 20, 30.25, 'i am moon 20', true, true, 6);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'planet 1', 10, 20, 30.25, 'i am planet 1', true, true, 1);
INSERT INTO public.planet VALUES (2, 'planet 2', 10, 20, 30.25, 'i am planet 2', true, true, 1);
INSERT INTO public.planet VALUES (3, 'planet 3', 10, 20, 30.25, 'i am planet 3', true, true, 2);
INSERT INTO public.planet VALUES (4, 'planet 4', 10, 20, 30.25, 'i am planet 4', true, true, 2);
INSERT INTO public.planet VALUES (5, 'planet 5', 10, 20, 30.25, 'i am planet 5', true, true, 3);
INSERT INTO public.planet VALUES (6, 'planet 6', 10, 20, 30.25, 'i am planet 6', true, true, 3);
INSERT INTO public.planet VALUES (7, 'planet 7', 10, 20, 30.25, 'i am planet 7', true, true, 4);
INSERT INTO public.planet VALUES (8, 'planet 8', 10, 20, 30.25, 'i am planet 8', true, true, 4);
INSERT INTO public.planet VALUES (9, 'planet 9', 10, 20, 30.25, 'i am planet 9', true, true, 5);
INSERT INTO public.planet VALUES (10, 'planet 10', 10, 20, 30.25, 'i am planet 10', true, true, 5);
INSERT INTO public.planet VALUES (11, 'planet 11', 10, 20, 30.25, 'i am planet 11', true, true, 6);
INSERT INTO public.planet VALUES (12, 'planet 12', 10, 20, 30.25, 'i am planet 12', true, true, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'star 1', 10, 20, 30.25, 'i am star 1', true, true, 1);
INSERT INTO public.star VALUES (2, 'star 2', 10, 20, 30.25, 'i am star 2', true, true, 2);
INSERT INTO public.star VALUES (3, 'star 3', 10, 20, 30.25, 'i am star 3', true, true, 3);
INSERT INTO public.star VALUES (4, 'star 4', 10, 20, 30.25, 'i am star 3', true, true, 4);
INSERT INTO public.star VALUES (5, 'star 5', 10, 20, 30.25, 'i am star 5', true, true, 5);
INSERT INTO public.star VALUES (6, 'star 6', 10, 20, 30.25, 'i am star 6', true, true, 6);


--
-- Name: extra_table_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.extra_table_id_seq', 4, true);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 6, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 20, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 12, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 6, true);


--
-- Name: extra_table extra_table_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.extra_table
    ADD CONSTRAINT extra_table_name_unique UNIQUE (name);


--
-- Name: extra_table extra_table_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.extra_table
    ADD CONSTRAINT extra_table_pkey PRIMARY KEY (extra_table_id);


--
-- Name: galaxy galaxy_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_unique UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_unique UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_unique UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_unique UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy text_field_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT text_field_unique UNIQUE (text_field);


--
-- Name: extra_table extra_table_moon_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.extra_table
    ADD CONSTRAINT extra_table_moon_id_fkey FOREIGN KEY (moon_id) REFERENCES public.moon(moon_id);


--
-- Name: star fk_galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: planet fk_planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_planet_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: moon fk_planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- PostgreSQL database dump complete
--

