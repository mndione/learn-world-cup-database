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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
    game_id integer NOT NULL,
    year integer NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL,
    round character varying(50) NOT NULL
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
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (45, 2018, 87, 88, 4, 2, 'Final');
INSERT INTO public.games VALUES (46, 2018, 89, 90, 2, 0, 'Third Place');
INSERT INTO public.games VALUES (47, 2018, 88, 90, 2, 1, 'Semi-Final');
INSERT INTO public.games VALUES (48, 2018, 87, 89, 1, 0, 'Semi-Final');
INSERT INTO public.games VALUES (49, 2018, 88, 91, 3, 2, 'Quarter-Final');
INSERT INTO public.games VALUES (50, 2018, 90, 92, 2, 0, 'Quarter-Final');
INSERT INTO public.games VALUES (51, 2018, 89, 93, 2, 1, 'Quarter-Final');
INSERT INTO public.games VALUES (52, 2018, 87, 94, 2, 0, 'Quarter-Final');
INSERT INTO public.games VALUES (53, 2018, 90, 95, 2, 1, 'Eighth-Final');
INSERT INTO public.games VALUES (54, 2018, 92, 96, 1, 0, 'Eighth-Final');
INSERT INTO public.games VALUES (55, 2018, 89, 97, 3, 2, 'Eighth-Final');
INSERT INTO public.games VALUES (56, 2018, 93, 98, 2, 0, 'Eighth-Final');
INSERT INTO public.games VALUES (57, 2018, 88, 99, 2, 1, 'Eighth-Final');
INSERT INTO public.games VALUES (58, 2018, 91, 100, 2, 1, 'Eighth-Final');
INSERT INTO public.games VALUES (59, 2018, 94, 101, 2, 1, 'Eighth-Final');
INSERT INTO public.games VALUES (60, 2018, 87, 102, 4, 3, 'Eighth-Final');
INSERT INTO public.games VALUES (61, 2014, 103, 102, 1, 0, 'Final');
INSERT INTO public.games VALUES (62, 2014, 104, 93, 3, 0, 'Third Place');
INSERT INTO public.games VALUES (63, 2014, 102, 104, 1, 0, 'Semi-Final');
INSERT INTO public.games VALUES (64, 2014, 103, 93, 7, 1, 'Semi-Final');
INSERT INTO public.games VALUES (65, 2014, 104, 105, 1, 0, 'Quarter-Final');
INSERT INTO public.games VALUES (66, 2014, 102, 89, 1, 0, 'Quarter-Final');
INSERT INTO public.games VALUES (67, 2014, 93, 95, 2, 1, 'Quarter-Final');
INSERT INTO public.games VALUES (68, 2014, 103, 87, 1, 0, 'Quarter-Final');
INSERT INTO public.games VALUES (69, 2014, 93, 106, 2, 1, 'Eighth-Final');
INSERT INTO public.games VALUES (70, 2014, 95, 94, 2, 0, 'Eighth-Final');
INSERT INTO public.games VALUES (71, 2014, 87, 107, 2, 0, 'Eighth-Final');
INSERT INTO public.games VALUES (72, 2014, 103, 108, 2, 1, 'Eighth-Final');
INSERT INTO public.games VALUES (73, 2014, 104, 98, 2, 1, 'Eighth-Final');
INSERT INTO public.games VALUES (74, 2014, 105, 109, 2, 1, 'Eighth-Final');
INSERT INTO public.games VALUES (75, 2014, 102, 96, 1, 0, 'Eighth-Final');
INSERT INTO public.games VALUES (76, 2014, 89, 110, 2, 1, 'Eighth-Final');


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (87, 'France');
INSERT INTO public.teams VALUES (88, 'Croatia');
INSERT INTO public.teams VALUES (89, 'Belgium');
INSERT INTO public.teams VALUES (90, 'England');
INSERT INTO public.teams VALUES (91, 'Russia');
INSERT INTO public.teams VALUES (92, 'Sweden');
INSERT INTO public.teams VALUES (93, 'Brazil');
INSERT INTO public.teams VALUES (94, 'Uruguay');
INSERT INTO public.teams VALUES (95, 'Colombia');
INSERT INTO public.teams VALUES (96, 'Switzerland');
INSERT INTO public.teams VALUES (97, 'Japan');
INSERT INTO public.teams VALUES (98, 'Mexico');
INSERT INTO public.teams VALUES (99, 'Denmark');
INSERT INTO public.teams VALUES (100, 'Spain');
INSERT INTO public.teams VALUES (101, 'Portugal');
INSERT INTO public.teams VALUES (102, 'Argentina');
INSERT INTO public.teams VALUES (103, 'Germany');
INSERT INTO public.teams VALUES (104, 'Netherlands');
INSERT INTO public.teams VALUES (105, 'Costa Rica');
INSERT INTO public.teams VALUES (106, 'Chile');
INSERT INTO public.teams VALUES (107, 'Nigeria');
INSERT INTO public.teams VALUES (108, 'Algeria');
INSERT INTO public.teams VALUES (109, 'Greece');
INSERT INTO public.teams VALUES (110, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 76, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 110, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

