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

DROP DATABASE user_games;
--
-- Name: user_games; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE user_games WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE user_games OWNER TO freecodecamp;

\connect user_games

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    user_id integer NOT NULL,
    game_id integer NOT NULL,
    score integer
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: user_info; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.user_info (
    username character varying(22) NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.user_info OWNER TO freecodecamp;

--
-- Name: user_info_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.user_info_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_info_user_id_seq OWNER TO freecodecamp;

--
-- Name: user_info_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.user_info_user_id_seq OWNED BY public.user_info.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: user_info user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.user_info ALTER COLUMN user_id SET DEFAULT nextval('public.user_info_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 1, 3);
INSERT INTO public.games VALUES (2, 2, 5);
INSERT INTO public.games VALUES (1, 3, 9);
INSERT INTO public.games VALUES (1, 4, 11);
INSERT INTO public.games VALUES (5, 5, 667);
INSERT INTO public.games VALUES (6, 6, 270);
INSERT INTO public.games VALUES (5, 7, 180);
INSERT INTO public.games VALUES (5, 8, 36);
INSERT INTO public.games VALUES (5, 9, 765);
INSERT INTO public.games VALUES (7, 10, 836);
INSERT INTO public.games VALUES (8, 11, 772);
INSERT INTO public.games VALUES (7, 12, 602);
INSERT INTO public.games VALUES (7, 13, 190);
INSERT INTO public.games VALUES (7, 14, 428);
INSERT INTO public.games VALUES (9, 15, 579);
INSERT INTO public.games VALUES (10, 16, 580);
INSERT INTO public.games VALUES (9, 17, 210);
INSERT INTO public.games VALUES (9, 18, 637);
INSERT INTO public.games VALUES (9, 19, 638);
INSERT INTO public.games VALUES (12, 20, 1);
INSERT INTO public.games VALUES (16, 21, 603);
INSERT INTO public.games VALUES (17, 22, 122);
INSERT INTO public.games VALUES (16, 23, 518);
INSERT INTO public.games VALUES (16, 24, 869);
INSERT INTO public.games VALUES (16, 25, 175);
INSERT INTO public.games VALUES (1, 26, 1);
INSERT INTO public.games VALUES (20, 27, 501);
INSERT INTO public.games VALUES (21, 28, 204);
INSERT INTO public.games VALUES (20, 29, 248);
INSERT INTO public.games VALUES (20, 30, 741);
INSERT INTO public.games VALUES (20, 31, 865);
INSERT INTO public.games VALUES (22, 32, 492);
INSERT INTO public.games VALUES (23, 33, 733);
INSERT INTO public.games VALUES (22, 34, 26);
INSERT INTO public.games VALUES (22, 35, 486);
INSERT INTO public.games VALUES (22, 36, 772);
INSERT INTO public.games VALUES (27, 37, 2);
INSERT INTO public.games VALUES (28, 38, 104);
INSERT INTO public.games VALUES (28, 39, 13);
INSERT INTO public.games VALUES (29, 40, 489);
INSERT INTO public.games VALUES (29, 41, 927);
INSERT INTO public.games VALUES (28, 42, 677);
INSERT INTO public.games VALUES (28, 43, 94);
INSERT INTO public.games VALUES (28, 44, 550);
INSERT INTO public.games VALUES (30, 45, 314);
INSERT INTO public.games VALUES (30, 46, 363);
INSERT INTO public.games VALUES (31, 47, 942);
INSERT INTO public.games VALUES (31, 48, 753);
INSERT INTO public.games VALUES (30, 49, 442);
INSERT INTO public.games VALUES (30, 50, 960);
INSERT INTO public.games VALUES (30, 51, 381);


--
-- Data for Name: user_info; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.user_info VALUES ('Mert', 1);
INSERT INTO public.user_info VALUES ('Aga', 2);
INSERT INTO public.user_info VALUES ('user_1691178235877', 3);
INSERT INTO public.user_info VALUES ('user_1691178235876', 4);
INSERT INTO public.user_info VALUES ('user_1691178682846', 5);
INSERT INTO public.user_info VALUES ('user_1691178682845', 6);
INSERT INTO public.user_info VALUES ('user_1691178698810', 7);
INSERT INTO public.user_info VALUES ('user_1691178698809', 8);
INSERT INTO public.user_info VALUES ('user_1691178705814', 9);
INSERT INTO public.user_info VALUES ('user_1691178705813', 10);
INSERT INTO public.user_info VALUES ('UUU', 11);
INSERT INTO public.user_info VALUES ('UUUU', 12);
INSERT INTO public.user_info VALUES ('MMMM', 13);
INSERT INTO public.user_info VALUES ('user_1691179170278', 14);
INSERT INTO public.user_info VALUES ('user_1691179170277', 15);
INSERT INTO public.user_info VALUES ('user_1691179560124', 16);
INSERT INTO public.user_info VALUES ('user_1691179560123', 17);
INSERT INTO public.user_info VALUES ('user_1691179783197', 18);
INSERT INTO public.user_info VALUES ('user_1691179783196', 19);
INSERT INTO public.user_info VALUES ('user_1691179975914', 20);
INSERT INTO public.user_info VALUES ('user_1691179975913', 21);
INSERT INTO public.user_info VALUES ('user_1691180094265', 22);
INSERT INTO public.user_info VALUES ('user_1691180094264', 23);
INSERT INTO public.user_info VALUES ('IIIII', 24);
INSERT INTO public.user_info VALUES ('ıııııııııııı', 25);
INSERT INTO public.user_info VALUES ('UUUUUUUUUU', 26);
INSERT INTO public.user_info VALUES ('UUUUUUUUUUUUU', 27);
INSERT INTO public.user_info VALUES ('user_1691180252021', 28);
INSERT INTO public.user_info VALUES ('user_1691180252020', 29);
INSERT INTO public.user_info VALUES ('user_1691180307164', 30);
INSERT INTO public.user_info VALUES ('user_1691180307163', 31);


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 51, true);


--
-- Name: user_info_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.user_info_user_id_seq', 31, true);


--
-- Name: user_info user_info_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.user_info
    ADD CONSTRAINT user_info_pkey PRIMARY KEY (user_id);


--
-- Name: user_info user_info_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.user_info
    ADD CONSTRAINT user_info_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.user_info(user_id);


--
-- PostgreSQL database dump complete
--

