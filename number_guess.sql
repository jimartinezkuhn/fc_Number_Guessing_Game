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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    username character varying(22),
    games_played integer,
    best_game integer
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES ('user_1680891158970', 0, 500000000);
INSERT INTO public.users VALUES ('user_1680891158969', 0, 500000000);
INSERT INTO public.users VALUES ('user_1680891385117', 2, 420);
INSERT INTO public.users VALUES ('user_1680891324855', 5, 213);
INSERT INTO public.users VALUES ('user_1680891202957', 2, 24);
INSERT INTO public.users VALUES ('user_1680891385118', 5, 143);
INSERT INTO public.users VALUES ('user_1680891202958', 5, 98);
INSERT INTO public.users VALUES ('user_1680891330529', 2, 149);
INSERT INTO public.users VALUES ('user_1680891330530', 5, 122);
INSERT INTO public.users VALUES ('user_1680891217021', 2, 249);
INSERT INTO public.users VALUES ('user_1680891217022', 5, 655);
INSERT INTO public.users VALUES ('user_1680891391401', 2, 233);
INSERT INTO public.users VALUES ('user_1680891265895', 2, 501);
INSERT INTO public.users VALUES ('user_1680891335363', 2, 671);
INSERT INTO public.users VALUES ('user_1680891391402', 5, 184);
INSERT INTO public.users VALUES ('user_1680891265896', 5, 185);
INSERT INTO public.users VALUES ('user_1680891335364', 5, 647);
INSERT INTO public.users VALUES ('user_1680891295375', 2, 132);
INSERT INTO public.users VALUES ('user_1680891295376', 5, 462);
INSERT INTO public.users VALUES ('user_1680891343430', 2, 468);
INSERT INTO public.users VALUES ('user_1680891303524', 2, 696);
INSERT INTO public.users VALUES ('user_1680891396965', 2, 111);
INSERT INTO public.users VALUES ('user_1680891343431', 5, 290);
INSERT INTO public.users VALUES ('user_1680891303525', 5, 20);
INSERT INTO public.users VALUES ('user_1680891396966', 5, 96);
INSERT INTO public.users VALUES ('user_1680891311722', 2, 52);
INSERT INTO public.users VALUES ('user_1680891367729', 2, 589);
INSERT INTO public.users VALUES ('user_1680891311723', 5, 423);
INSERT INTO public.users VALUES ('user_1680891367730', 5, 300);
INSERT INTO public.users VALUES ('user_1680891319403', 2, 144);
INSERT INTO public.users VALUES ('user_1680891319404', 5, 401);
INSERT INTO public.users VALUES ('user_1680891373776', 2, 52);
INSERT INTO public.users VALUES ('user_1680891324854', 2, 108);
INSERT INTO public.users VALUES ('user_1680891373777', 5, 254);
INSERT INTO public.users VALUES ('user_1680891378370', 2, 167);
INSERT INTO public.users VALUES ('user_1680891378371', 5, 147);


--
-- PostgreSQL database dump complete
--

